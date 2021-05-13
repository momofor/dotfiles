#include <cctype>
#include <iostream>
#include <stdio.h>
#include "Lib.hpp"
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

string Lib::CaPiTaLiZe(string word) {
    for (int i = 0; i < word.length(); i++) {
        if (i % 2 == 0) {
            word[i] = toupper(word[i]);
        }
    }
    return word;
}

