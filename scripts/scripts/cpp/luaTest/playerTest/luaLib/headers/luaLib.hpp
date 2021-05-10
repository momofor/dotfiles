#include <iostream>
#include <stdio.h>
#include <lua5.3/lua.hpp>

class luaLib 
{
    public: 
        bool checkLua(lua_State *L , int r);
};
