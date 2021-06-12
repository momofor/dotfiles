#include <vector>
#include <iostream>
#include <stdio.h>
#include "../headers/gameLib.hpp"

GameLib::GameLib(int Currentu, std::vector<std::string> wordsu) {
    this-> currentIndex = Currentu;
    this->words = wordsu;
    this->printWords();
    while (true) {
        this->CheckInput();
    }

}
void GameLib::printWords() {
    for (int i = 0; i < this->words.size();i++) {
        std::string word = this->words[i];
        if (word == this->words[this->currentIndex]){
            std::cout << "\r\033[0;36m" << "[" << i << "]" << word << std::endl << std::flush;
        }
        else {
            std::cout << "\r\33[0;37m" << "[" << i << "]" << word << std::endl << std::flush;
        }
        if (i == this->words.size()) {
            i = 0;
        }
    }    
}

void GameLib::CheckInput() {
    std::string keyPressed;
    std::cin >> keyPressed;
    if (keyPressed == "k" && this->currentIndex == 0) {
        this->currentIndex = 0;
        this->printWords();
    }
    else if(keyPressed == "j" && this->currentIndex == this->words.size())  {
        this->currentIndex = this->words.size();
        this->printWords();
    }
    else if (keyPressed == "k" && this->currentIndex != 0) {
        this->currentIndex = this->currentIndex - 1;
        this->printWords();
    }
    else if( keyPressed == "j" && this->currentIndex != this->words.size()) {
        this->currentIndex = this->currentIndex + 1;
        this->printWords();
    }
    else if (std::stoi(keyPressed) < this->words.size()){
        this->currentIndex = std::stoi(keyPressed);
        this->printWords();
    }
    else if (keyPressed == "no") {
        std::cout << this->currentIndex;
    }
    else {
        this->printWords();
        std::cout << "Haha dumb";
    }
}

