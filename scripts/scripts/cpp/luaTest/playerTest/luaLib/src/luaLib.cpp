#include "../headers/luaLib.hpp"

bool luaLib::checkLua(lua_State *L , int r) 
{
    if (r != LUA_OK) 
    {
        std::string errormsg = lua_tostring(L, -1);
        std::cout << errormsg <<  std::endl;
        return false;
    }
    return true;
}
