#include <vector>
#include <iostream>
#include <stdio.h>
#include "../headers/gameLib.hpp"

GameLib::GameLib(int Currentu, std::vector<std::string> wordsu) {
    this-> Current = Currentu;
    this->words = wordsu;
    this->start();
    while (true) {
        this->CheckInput();
    }

}
void GameLib::start() {
    for (int i = 0; i < this->words.size();i++) {
        std::string word = this->words[i];
        if (word == this->words[this->Current]){
            std::cout << "\033[1;36m" << "[" << i << "]" << word << std::endl << std::flush;
        }
        else {
            std::cout << "\33[1;37m" << "[" << i << "]" << word << std::endl << std::flush;
        }
        if (i == this->words.size()) {
            i = 0;
        }
    }    
}
void GameLib::CheckInput() {
    std::string choice;
    std::cin >> choice;
    if (choice == "k" && this->Current == 0) {
        this->Current = 0;
        this->start();
    }
    else if(choice == "j" && this->Current == this->words.size())  {
        this->Current = this->words.size();
        this->start();
    }
    else if (choice == "k" && this->Current != 0) {
        this->Current = this->Current - 1;
        this->start();
    }
    else if( choice == "j" && this->Current != this->words.size()) {
        this->Current = this->Current + 1;
        this->start();
    }
    else if (std::stoi(choice) <= this->words.size()){
        this->Current = std::stoi(choice);
        this->start();
    }
    else {
        this->start();
        std::cout << "Haha dumb";
    }
}

