#include <stdio.h>
#include <iostream>
#include <stdio.h>
#include <vector>
#include "../headers/gameLib.hpp"

void GameLib::choice(std::string message, std::vector<std::string> messages)
{
    std::cout << "----------- Choose Carefuly ----------" << std::endl;
    std::cout << message << std::endl;

    for (int i = 0; i < messages.size(); i++) {
        std::cout << "[" << i+1 << "]" << messages[i] << std::endl;
    }
}
void GameLib::change() 
{
    for (int i = 0; i < (*this).words.size();i++) 
    {
        if ((*this).current == i )
        {
            std::cout << (*this).words[i] << "is the current one " << std::endl;
        }else {
            std::cout << (*this).words[i] << std::endl;
        }
    }
}

void GameLib::move(std::vector<std::string> words , char choice)
{
    (*this).words = words;
    if (choice == 'j')
    {
        (*this).current = (*this).current++;
        (*this).change();
    }else if (choice == 'k') {
        (*this).current = (*this).current--;
        (*this).change();
    }else if (choice == 'k' && (*this).current == 0) {
        (*this).current = 0;
        (*this).change();
        std::cout << "You big dumb" << std::endl;
    }else if (choice == 'j' && (*this).current == words.size()) {
        (*this).current = words.size();
        std::cout << "You small dumb";
        (*this).change();
    }
}
