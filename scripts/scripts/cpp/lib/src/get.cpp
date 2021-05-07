#include <iostream>
#include <stdio.h>
using std::string;
using std::cout;
using std::cin;

string ask_get(string text) 
{
    cout << text;
    string noice;
    getline(cin, noice);
    return noice;
}

