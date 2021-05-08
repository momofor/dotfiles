#include "lib/imports.hpp"
#include <lua5.3/lua.hpp>

void test(int n ,int *number , int *nice) {
    *nice = n + n;
    *number = n * n;
}

int main ()
{
    Player current_player;
    Lib helpers;

    current_player.name = helpers.ask_get("what is your name: ");
    cout << "what is your age: ";
    cin >> current_player.age;
    cout << "You are " << current_player.name << " and you are " << std::to_string(current_player.age) << " years old" << std::endl;

    int *add;
    int *mult;
    test(10 , mult , add);
    cout << "mult is " << *mult << "add is " << *add;
    return 0;
}

