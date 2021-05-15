#include "imports.hpp"

int main() 
{
    GameLib lib(0);
    std::vector<std::string> noice {
        "coolu yes " ,
        "No yes nice" ,
        "WOOHOO" ,
        "YAAYEET BOY"
    };

    //std::string no = "You only have two options be nice no";
    //lib.choice(no, noice);
    char userChoice;
    std::cin >> userChoice;
    lib.change(noice);
    std::cout << userChoice;
    return 0;
}
