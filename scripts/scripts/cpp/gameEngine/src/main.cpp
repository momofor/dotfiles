#include "imports.hpp"
#include <vector>
#include "../gameLib/headers/gameLib.hpp"
void t0() {
    std::cout << "the first kid";
}

void t1() {
    std::cout << "the second kid";
}

void t2() {
    std::cout << "the third kid";
}

void t3() {
    std::cout << "the fourth kid";
}

int main() 
{
    std::vector<std::string> noice {
        "coolu yes " ,
        "No yes nice" ,
        "WOOHOO" ,
        "YAAYEET BOY"
    };
    std::vector<void (*)()> noices = {t0, t1, t2, t3};

    GameLib noh(0,noice, noices);
    noh.printWords();
    return 0;
}
