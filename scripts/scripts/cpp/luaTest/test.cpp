#include <lua5.3/lua.hpp>
#include <iostream>
#include <stdio.h>

int hello(lua_State *L) {
    printf("C++ says hello world \n");
    return 1;
}

        // takes file names as arguments to the program
int main(int argc, char **argv){
//iterate all files and execute
    // makes a pointer for each file
    const char *file = argv[1];

    //create a new lua state for each file with the pointer L
    lua_State *L = luaL_newstate();

    //open all lua libraries libraries
    luaL_openlibs(L);

    lua_register(L, "nice", hello);

    int s = luaL_loadfile(L, file);

    if(!s)
        s = lua_pcall(L, 0, LUA_MULTRET, 0);

    //show any errors
    if(s){
        printf("Error: %s \n", lua_tostring(L, -1));
        lua_pop(L, 1);
    }


    lua_getglobal(L, "f");
    lua_pushinteger(L, 1);
    lua_pushinteger(L, 2);
    lua_call(L,2,1);
    int test = lua_tointeger(L, -1);
    std::cout << test << std::endl;

    lua_getglobal(L, "testu");
    lua_pushliteral(L, "'hello world'");
    lua_call(L, 1, 1);
    std::string test1 = lua_tostring(L, -1);
    std::cout << test1;

    lua_close(L);
    return 0;
}
