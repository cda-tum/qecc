//
// Created by lucas on 17/05/2022.
//

#ifndef QUNIONFIND_CODES_HPP
#define QUNIONFIND_CODES_HPP
#include "Code.hpp"

#include <utility>

class SteaneXCode: public Code {
public:
    SteaneXCode():
        Code(ParityCheckMatrix({{1, 0, 0, 1, 0, 1, 1},
                                {0, 1, 0, 1, 1, 0, 1},
                                {0, 0, 1, 0, 1, 1, 1}})) { K = 3; }
};
class HGPcode: public Code {
public:
    HGPcode():
        Code(ParityCheckMatrix(Utils::importGf2MatrixFromFile("/home/luca/Documents/codeRepos/qunionfind/examples/hgp_(4,7)-[[900,36,10]]_hx.txt"))) { K = 36; }
};

class ToricCode_8: public Code {
public:
    ToricCode_8():
        Code(ParityCheckMatrix(Utils::importGf2MatrixFromFile("/home/luca/Documents/codeRepos/qunionfind/examples/test/toric_(nan,nan)-[[8,2,2]]_hx.txt"))) { K = 2; }
};
class ToricCode_32: public Code {
public:
    ToricCode_32():
        Code(ParityCheckMatrix(Utils::importGf2MatrixFromFile("/home/luca/Documents/codeRepos/qunionfind/examples/test/toric_(nan,nan)-[[32,2,4]]_hx.txt"))) { K = 2; }
};
#endif //QUNIONFIND_CODES_HPP
