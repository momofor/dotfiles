#include <iostream>
#include <stdio.h>
#include <vector>

#ifndef gameLib_HPP
#define gameLib_HPP

class GameLib 
{
    public:
        int current;
        std::vector<std::string> words;
        void change(std::vector<std::string> words);
        void choice(std::string message , std::vector<std::string> messages);
        void move(std::vector<std::string> words , char choice);
        GameLib(int currentValue)
        {
            (*this).current = currentValue;
        }
};

#endif
