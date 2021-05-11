#include <lua5.3/lua.hpp>
#include <iostream>
#include <stdio.h>
#include "luaLib/headers/luaLib.hpp"

std::string getPlayer(lua_State *L , char *field ,char* globalName ) 
{
    lua_getglobal(L, globalName);
    lua_getfield(L , -1 , field);
    if (lua_isstring(L, -1))
    {
        return lua_tostring(L, -1);
        lua_pop(L, 1);
    }else if (lua_isinteger(L, -1))
    {
        int rtn = lua_tointeger(L, -1);
        return lua_tostring(L, rtn);
        lua_pop(L, 1);
    }
    return "";
}

int hello(lua_State *L)
{
    std::cout << "Hello World I mean lua from C++" << std::endl;
    return 0;
}

int main() 
{
    struct player 
    {
        std::string name;
        int age;
        int level;
    }player;
    luaLib Lib;

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    lua_register(L, "nice", hello);

    if (Lib.checkLua(L, luaL_dofile(L, "player.lua")))
    {
        player.name = getPlayer(L, (char *)"name",(char *)"player");
        player.age = std::stoi(getPlayer(L, (char *)"age",(char *)"player"));
        player.level = std::stoi(getPlayer(L, (char * )"level",(char *)"player"));

        std::cout <<"you are " << player.name << " and you are " << player.age  << " years old and your level is " << player.level << std::endl;

    }
    return 0;
}
