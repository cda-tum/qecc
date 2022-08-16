//
// Created by lucas on 09/06/22.
//

#ifndef QUNIONFIND_IMPROVEDUFD_HPP
#define QUNIONFIND_IMPROVEDUFD_HPP
#include "Decoder.hpp"

#include <unordered_set>
namespace std {
    template<>
    struct hash<std::pair<std::size_t, std::size_t>> {
        std::size_t operator()(const std::pair<std::size_t, std::size_t>& k) const {
            std::size_t hash = 17;
            hash             = hash * 31 + std::hash<std::size_t>()(k.first);
            hash             = hash * 31 + std::hash<std::size_t>()(k.second);
            return hash;
        }
    };

} // namespace std

class ImprovedUFD: public Decoder {
public:
    using Decoder::Decoder;
    void decode(const gf2Vec& syndrome) override;
    void reset() override;

private:
    // do not call.at only getNodeFromIdx()
    std::unordered_map<std::size_t, std::unique_ptr<TreeNode>> nodeMap{};
    TreeNode*                                                  getNodeFromIdx(std::size_t idx);
    void                                                       standardGrowth(std::vector<std::pair<std::size_t, std::size_t>>& fusionEdges,
                                                                              std::unordered_map<std::size_t, bool>& presentMap, const std::vector<std::size_t>& components, const std::unique_ptr<ParityCheckMatrix>& pcm);
    void                                                       singleClusterRandomFirstGrowth(std::vector<std::pair<std::size_t, std::size_t>>& fusionEdges,
                                                                                              std::unordered_map<std::size_t, bool>& presentMap, const std::vector<std::size_t>& components, const std::unique_ptr<ParityCheckMatrix>& pcm);
    void                                                       singleClusterSmallestFirstGrowth(std::vector<std::pair<std::size_t, std::size_t>>& fusionEdges,
                                                                                                std::unordered_map<std::size_t, bool>& presentMap, const std::vector<std::size_t>& components, const std::unique_ptr<ParityCheckMatrix>& pcm);
    bool                                                       isValidComponent(const std::size_t& compId, const std::unique_ptr<ParityCheckMatrix>& pcm);
    std::vector<std::size_t>                                   erasureDecoder(std::vector<std::size_t>& erasure, std::vector<std::size_t>& syndrome, const std::unique_ptr<ParityCheckMatrix>& pcm);
    void                                                       extractValidComponents(std::vector<std::size_t>& invalidComponents, std::vector<std::size_t>& erasure, const std::unique_ptr<ParityCheckMatrix>& pcm);
    std::vector<std::size_t>                                   computeInitTreeComponents(const gf2Vec& syndrome);
    void                                                       doDecoding(const gf2Vec& syndrome, const std::unique_ptr<ParityCheckMatrix>& pcm);
};
#endif //QUNIONFIND_IMPROVEDUFD_HPP
