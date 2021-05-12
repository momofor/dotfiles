#include "imports.hpp"
#include "gameLib/headers/gameLib.hpp"

int main() 
{
    GameLib lib;
    std::vector<std::string> noice {
        "coolu yes " ,
        "No yes nice"
    };

    std::string no = "You only have two options be nice no";
    lib.choice(no, noice);
    char userChoice;
    //std::cin >> userChoice;
    //if (userChoice == 1)
    //{
        //std::cout << "You are Very Very cool" << std::endl;
    //}else if (userChoice == 2) {
        //std::cout << "You are Laaame" << std::endl;
    //}
    std::cin >> userChoice;
    lib.move(noice, userChoice);
    std::cout << userChoice;
    return 0;
}
