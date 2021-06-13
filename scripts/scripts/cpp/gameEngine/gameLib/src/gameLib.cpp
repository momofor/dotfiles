#include <cstdlib>
#include <vector>
#include <iostream>
#include <stdio.h>
#include <iostream>
#include "../headers/gameLib.hpp"

GameLib::GameLib(int Currentu, std::vector<std::string> wordsu , std::vector<void (*)()> funs) {
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

char getKeyPressed() {
    char c;

    while(1) {
        system("stty raw");
        c = getchar(); 
        // terminate when "." is pressed
        system("stty cooked");
        system("clear");
        return c;
    }
}

void GameLib::CheckInput() {
    char  keyPressed;
    keyPressed = getKeyPressed();
    if (keyPressed == 'k' && this->currentIndex == 0) {
        this->currentIndex = 0;
        this->printWords();
    }
    else if(keyPressed == 'j' && this->currentIndex == this->words.size()-1)  {
        this->currentIndex = 0;
        this->printWords();
    }
    else if (keyPressed == 'k' && this->currentIndex != 0) {
        this->currentIndex = this->currentIndex - 1;
        this->printWords();
    }
    else if( keyPressed == 'j' && this->currentIndex != this->words.size()) {
        this->currentIndex = this->currentIndex + 1;
        this->printWords();
    }
    else if ((int)(keyPressed) < this->words.size()){
        this->currentIndex = (int)(keyPressed);
        this->printWords();
    }
    else if (keyPressed == 'a') {
        this->funs[this->currentIndex]();
        this -> printWords();
    }
    else if (keyPressed == 'q') {
        std::exit(0);
    }
}

