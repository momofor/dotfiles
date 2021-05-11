#include <iostream>
#include <stdio.h>
#include <vector>

#ifndef TEST_HPP
#define TEST_HPP

class GameLib 
{
    public:
        int current = 0;
        std::vector<std::string> words;
        void choice(std::string message , std::vector<std::string> messages);
        void move(std::vector<std::string> words , char choice);
        void change();
};
#endif
