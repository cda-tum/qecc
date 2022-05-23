//
// Created by lucas on 21/04/2022.
//

#include "Decoder.hpp"

#include "TreeNode.hpp"

#include <cassert>
#include <queue>
#include <set>

std::vector<std::size_t> Decoder::decode(std::set<std::shared_ptr<TreeNode>>& syndrome) {
    auto                                   components = syndrome;
    std::vector<std::shared_ptr<TreeNode>> erasure;

    while (!components.empty()) {
        for (size_t i = 0; i < components.size(); i++) {
            // Step 1 growth // todo factor this out in order to compare different variants of growth
            std::vector<std::pair<std::size_t, std::size_t>> fusionEdges;
            std::map<std::size_t, bool>                      presentMap{}; // for step 4
            for (auto& component: components) {
                presentMap.insert(std::make_pair(component->vertexIdx, true));
                // at this point we can assume that component represents root of the component
                assert(component->parent == nullptr);
                auto bndryNodes = component->boundaryVertices;

                for (const auto& bndryNode: bndryNodes) {
                    auto nbrs = code.tannerGraph.getNeighboursIdx(bndryNode);
                    for (auto& nbr: nbrs) {
                        fusionEdges.emplace_back(std::pair(bndryNode, nbr));
                    }
                }
            }

            // Step 2 Fusion of clusters
            auto eIt = fusionEdges.begin();
            while (eIt != fusionEdges.end()) {
                auto n1    = code.tannerGraph.getNodeForId(eIt->first);
                auto n2    = code.tannerGraph.getNodeForId(eIt->second);
                auto root1 = TreeNode::Find(n1);
                auto root2 = TreeNode::Find(n2);

                //compares vertexIdx only
                if (*root1 == *root2) {
                    fusionEdges.erase(eIt++); // passes eIt to erase
                } else {
                    std::size_t root1Size = root1->clusterSize;
                    std::size_t root2Size = root2->clusterSize;
                    TreeNode::Union(root1, root2);

                    if (root1Size <= root2Size) { // Step 3 fusion of boundary lists
                        for (auto& boundaryVertex: root1->boundaryVertices) {
                            root2->boundaryVertices.insert(boundaryVertex);
                        }
                        root1->boundaryVertices.clear();
                    } else {
                        for (auto& boundaryVertex: root2->boundaryVertices) {
                            root1->boundaryVertices.insert(boundaryVertex);
                        }
                        root2->boundaryVertices.clear();
                    }
                    eIt++;
                }
            }

            // Step 4 Update roots avoiding duplicates
            auto it = components.begin();
            while (it != components.end()) {
                auto elem = *it;
                auto root = TreeNode::Find(elem);
                if (!presentMap.contains(root->vertexIdx)) {
                    components.erase(elem);
                    components.insert(root);
                }
                it++;
            }

            // Step 5 Update Boundary Lists, remove vertices that are not in boundary anymore
            // for each vertex v in boundary list of a component check if there is one neighbour that is not in the component, then it is still in the boundary
            // otherwise, if all its neighbours in the original graph are in the same component its not a boundary vertex anymore and we can remove it from the list
            for (auto& component: components) {
                auto iter = component->boundaryVertices.begin();
                while (iter != component->boundaryVertices.end()) {
                    auto nbrs     = code.tannerGraph.getNeighbours(*iter);
                    auto currNode = code.tannerGraph.getNodeForId(*iter);
                    auto currRoot = TreeNode::Find(currNode);
                    auto nbrIt    = nbrs.begin();
                    auto end      = nbrs.end();
                    while (nbrIt != end) {
                        auto nbrRoot = TreeNode::Find(*nbrIt);
                        if (currRoot->vertexIdx != nbrRoot->vertexIdx) {
                            // if we find one neighbour that is not in the same component the currNode is in the boundary
                            iter++;
                            break;
                        }
                        if (nbrIt + 1 == end) {
                            // if we have checked all neighbours and found none in another component remove from boundary list
                            //toRemoveList.emplace_back(*iter);
                            component->boundaryVertices.erase(iter++);
                            break;
                        } else {
                            nbrIt++;
                        }
                    }
                }
            }
            extractValidComponents(components, erasure);
        }
    }
    return erasureDecoder(erasure, syndrome);
}

std::vector<std::size_t> Decoder::erasureDecoder(std::vector<std::shared_ptr<TreeNode>>& erasure, std::set<std::shared_ptr<TreeNode>>& syndrome) {
    std::set<std::shared_ptr<TreeNode>> interior;
    std::vector<std::set<std::size_t>>  erasureSet{};
    std::size_t                         erasureSetIdx = 0;

    for (auto& currCompRoot: erasure) {
        std::set<std::size_t> compErasure;
        assert(currCompRoot->parent == nullptr); // should be due to steps above otherwise we can just call Find here
        std::queue<std::shared_ptr<TreeNode>> queue;

        // if currComp root is not in boundary, add it as first vertex to Int
        if (!currCompRoot->boundaryVertices.contains(currCompRoot->vertexIdx)) {
            currCompRoot->marked = true;
            compErasure.insert(currCompRoot->vertexIdx);
        }
        queue.push(currCompRoot);

        while (!queue.empty()) {
            auto currV = queue.front();
            queue.pop();

            std::vector<std::shared_ptr<TreeNode>> nbrs;
            for (auto& i: currV->children) {
                nbrs.emplace_back(i);
            }
            for (auto& nbr: nbrs) {
                if (!nbr->marked && !currCompRoot->boundaryVertices.contains(nbr->vertexIdx)) {
                    currV->markedNeighbours.insert(nbr->vertexIdx);
                    // add to interior by adding it to the list
                    nbr->marked = true;
                    compErasure.insert(nbr->vertexIdx);
                    queue.push(nbr);
                }
            }
        }
        // adapt boundary of interior for current component
        auto itr = currCompRoot->boundaryVertices.begin();
        while (itr != currCompRoot->boundaryVertices.end()) {
            if (!code.tannerGraph.getNodeForId(*itr)->marked) {
                currCompRoot->boundaryVertices.erase(itr++);
            } else {
                itr++;
            }
        }
        erasureSet.emplace_back(compErasure);
        erasureSetIdx++;
    }

    std::vector<std::set<std::size_t>> resList;
    // go through nodes in erasure
    // if current node v is a check node in Int, remove B(v, 1)
    for (auto& component: erasureSet) {
        // todo delete
        std::cout << "peeling erasure ";
        for (auto& c: component) {
            std::cout << c << "," << std::endl;
        }
        std::set<std::size_t> xi;
        while (!component.empty()) {
            auto cn            = code.tannerGraph.getNodeForId(*component.begin());
            auto componentRoot = TreeNode::Find(cn);
            auto currN         = code.tannerGraph.getNodeForId(*(componentRoot->boundaryVertices.begin()));
            std::cout << "currN:" << currN->vertexIdx << std::endl;
            if (currN->marked && !currN->isCheck) { // we can assume the node given is the root bc of step 4 above
                xi.insert(currN->vertexIdx);
                std::cout << "added to xi: " << currN->vertexIdx << std::endl;
                std::cout << "removing all its neighbouring checks and their neigbouhrs" << std::endl;
                for (auto& i: currN->markedNeighbours) {
                    auto nNbrs = code.tannerGraph.getNeighboursIdx(i);
                    auto nnbr  = nNbrs.begin();
                    while (nnbr != nNbrs.end()) {
                        component.erase(*nnbr++);
                    }
                }
                auto ittt = currN->markedNeighbours.begin();
                while (ittt != currN->markedNeighbours.end()) {
                    component.erase(*ittt++);
                }
            }
        }
        resList.emplace_back(xi);
    }
    std::vector<std::size_t> result;
    for (auto& i: resList) {
        for (auto& n: i) {
            result.emplace_back(n);
        }
    }
    return result;
}

std::vector<std::size_t> Decoder::peelingDecoder(std::vector<std::shared_ptr<TreeNode>>& erasure, std::set<std::shared_ptr<TreeNode>>& syndrome) {
    std::set<std::size_t> erasureRoots;
    std::set<std::size_t> erasureVertices;
    for (auto& i: erasure) {
        erasureRoots.insert(i->vertexIdx);
    }
    std::set<std::size_t> syndr;
    for (const auto& s: syndrome) {
        syndr.insert(s->vertexIdx);
    }

    std::vector<std::size_t> result;
    // compute SF
    std::vector<std::set<std::pair<std::size_t, std::size_t>>> spanningForest;
    std::vector<std::set<std::size_t>>                         forestVertices;
    std::set<std::size_t>                                      visited;
    for (auto& currCompRoot: erasureRoots) {
        std::queue<std::size_t>                       queue;
        std::set<std::pair<std::size_t, std::size_t>> tree;
        std::set<std::size_t>                         treeVertices;
        queue.push(currCompRoot);
        visited.insert(currCompRoot);
        treeVertices.insert(currCompRoot);
        while (!queue.empty()) {
            auto currV = queue.front();
            queue.pop();
            auto nbrs = code.tannerGraph.getNeighboursIdx(currV);
            for (auto& nbr: nbrs) {
                auto t1 = code.tannerGraph.getNodeForId(nbr);
                auto t2 = code.tannerGraph.getNodeForId(currV);
                if (!visited.contains(nbr)) {
                    //add all neighbours to edges to be able to identify pendant ones in next step
                    // nbrs we are looking at have to be in same erasure component, check with Find
                    if (TreeNode::Find(t1) == TreeNode::Find(t2)) {
                        visited.insert(nbr);
                        queue.push(nbr);
                        treeVertices.insert(nbr);
                        treeVertices.insert(currV);
                        tree.insert(std::make_pair(currV, nbr));
                    }
                }
            }
        }
        spanningForest.emplace_back(tree);
        forestVertices.emplace_back(treeVertices);
    }
    std::size_t idxx = 0;

    std::vector<std::set<std::size_t>> boundaryVertices;
    std::size_t                        intTreeIdx = 0;

    // compute pendant vertices of SF
    for (const auto& vertices: forestVertices) {
        std::set<std::size_t> pendants;
        for (auto& v: vertices) {
            auto nbrs = code.tannerGraph.getNeighboursIdx(v);
            for (auto& n: nbrs) {
                if (!vertices.contains(n)) { // if there is neighbour not in spanning tree
                    pendants.insert(v);
                }
            }
        }
        boundaryVertices.emplace_back(pendants);
    }

    // peeling
    std::size_t fNIdx = 0;
    for (auto& tree: spanningForest) {
        auto boundaryVtcs = boundaryVertices.at(fNIdx);
        while (!syndr.empty()) {
            auto edgeIt = tree.begin();
            while (edgeIt != tree.end()) {
                std::pair<std::size_t, std::size_t> e;
                std::size_t                         check;
                std::size_t                         data;
                std::cout << "Checking edge (" << edgeIt->first << "," << edgeIt->second << ")" << std::endl;
                if(code.tannerGraph.getNodeForId(edgeIt->first)->marked || code.tannerGraph.getNodeForId(edgeIt->first)->marked){
                    tree.erase(edgeIt++);
                    continue;
                }
                std::cout << "pedants: ";
                for (auto& z: boundaryVtcs) {
                    std::cout << z << ",";
                }
                std::cout << "forest n: " << std::endl;
                for (auto& z: forestVertices.at(fNIdx)) {
                    std::cout << z << ",";
                }
                std::cout << std::endl;
                auto frst = edgeIt->first;
                auto scd  = edgeIt->second;
                // if in boundary simply remove
                if (boundaryVtcs.contains(frst)) {
                    code.tannerGraph.getNodeForId(frst)->marked = true;
                    forestVertices.at(fNIdx).erase(frst);
                } else if (boundaryVtcs.contains(scd)) {
                    code.tannerGraph.getNodeForId(scd)->marked = true;
                } else {
                    if (syndr.contains(frst)) {
                        check = frst;
                        data  = scd;
                    } else {
                        check = scd;
                        data  = frst;
                    }
                    // add data to estimate, remove check from syndrome
                    result.emplace_back(data);
                    std::cout << "adding to result: " << data << std::endl;
                    code.tannerGraph.getNodeForId(data)->marked  = true;
                    code.tannerGraph.getNodeForId(check)->marked = true;
                    forestVertices.at(fNIdx).erase(data);
                    forestVertices.at(fNIdx).erase(check);
                    syndr.erase(check);
                }
                tree.erase(edgeIt++);

                // update boundary vertices
                boundaryVtcs.clear();
                for (auto& v: forestVertices.at(fNIdx)) {
                    auto nbrs = code.tannerGraph.getNeighbours(v);
                    for (auto& n: nbrs) {
                        if (!forestVertices.at(fNIdx).contains(n->vertexIdx) && !n->marked) {
                            boundaryVtcs.insert(v);
                        }
                    }
                }
            }
        }
        fNIdx++;
    }
    return result;
}

void Decoder::extractValidComponents(std::set<std::shared_ptr<TreeNode>>& components, std::vector<std::shared_ptr<TreeNode>>& erasure) {
    auto it = components.begin();
    while (it != components.end()) {
        if (isValidComponent(*it)) {
            erasure.emplace_back(*it);
            components.erase(it++);
        } else {
            it++;
        }
    }
}

// for each check node verify that there is no neighbour that is in the boundary of the component
// if there is no neighbour in the boundary for each check vertex the check is covered by a node in Int TODO prove this in paper
bool Decoder::isValidComponent(const std::shared_ptr<TreeNode>& component) {
    std::vector<bool> valid(component->checkVertices.size());
    std::size_t       i = 0;
    for (const auto& checkVertex: component->checkVertices) {
        auto nbrs = code.tannerGraph.getNeighbours(checkVertex);

        for (auto& nbr: nbrs) {
            if (std::find(component->boundaryVertices.begin(), component->boundaryVertices.end(), nbr->vertexIdx) == component->boundaryVertices.end()) {
                valid.at(i) = true;
                break;
            }
        }
        i++;
    }
    return std::all_of(valid.begin(), valid.end(), [](bool i) { return i; });
}
