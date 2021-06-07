#include "imports.hpp"
#include <vector>
#include "../gameLib/headers/gameLib.hpp"

int main() 
{
    std::vector<std::string> noice {
        "coolu yes " ,
        "No yes nice" ,
        "WOOHOO" ,
        "YAAYEET BOY"
    };
    GameLib noh(0,noice);
    noh.printWords();
    return 0;
}
