#include <lua5.3/lua.hpp>
#include <iostream>
#include <stdio.h>

bool checkLua(lua_State *L , int r) {
    if (r != LUA_OK) 
    {
        std::string errormsg = lua_tostring(L, -1);
        std::cout << errormsg <<  std::endl;
        return false;
    }
    return true;
}

std::string getPlayer(lua_State *L , char *field ) 
{
    lua_getglobal(L, "player");
    lua_getfield(L , -1 , field);
    if (lua_isstring(L, -1))
    {
        return lua_tostring(L, -1);
        lua_remove(L, -2);
    }else if (lua_isinteger(L, -1))
    {
        int rtn = lua_tointeger(L, -1);
        return lua_tostring(L, rtn);
        lua_remove(L, -2);
    }
    return "";
}

int main() 
{
    struct player 
    {
        std::string name;
        int age;
        int level;
    }player;

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    if (checkLua(L, luaL_dofile(L, "player.lua")))
    {
        player.name = getPlayer(L, (char *)"name");
        player.age = std::stoi(getPlayer(L, (char *)"age"));
        player.level = std::stoi(getPlayer(L, (char * )"level"));

        std::cout <<"you are " << player.name << " and you are this old " << player.age << " and your level is " << player.level << std::endl;
    }
    return 0;
}
