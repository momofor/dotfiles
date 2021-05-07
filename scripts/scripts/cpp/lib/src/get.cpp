#include <iostream>
#include <stdio.h>
#include "../get.hpp"
using std::string;
using std::cout;
using std::cin;

string Lib::ask_get(string text) 
{
    cout << text;
    string noice;
    getline(cin, noice);
    return noice;
}

