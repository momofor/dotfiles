#include <iostream>
#include <stdio.h>
#include <vector>

#ifndef gameLib_HPP
#define gameLib_HPP

class GameLib 
{
    public:
    int Current = 1;
    std::vector<std::string> words;

    GameLib(int Currentu, std::vector<std::string> wordsu);
    void start();
    void CheckInput();

};

#endif
