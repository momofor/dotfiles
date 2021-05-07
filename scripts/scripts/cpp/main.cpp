#include "lib/imports.hpp"

int main ()
{
    Player current_player;
    current_player.name = ask_get("what is your name: ");
    cout << "what is your age: ";
    cin >> current_player.age;
    cout << "You are " + current_player.name + " and you are " + std::to_string(current_player.age) + " years old" << std::endl;

    string* new_me = &current_player.name;
    cout << "string value via pointer " << *new_me;

    return 0;
}

