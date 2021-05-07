#include "lib/imports.hpp"

int main ()
{
    Player current_player;
    Lib helpers;

    current_player.name = helpers.ask_get("what is your name: ");
    cout << "what is your age: ";
    cin >> current_player.age;
    cout << "You are " << current_player.name << " and you are " << std::to_string(current_player.age) << " years old" << std::endl;

    return 0;
}

