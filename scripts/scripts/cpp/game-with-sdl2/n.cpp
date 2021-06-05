#include <iostream>
#include <stdio.h>
#include <type_traits>
#include <lua5.3/lua.h>
#include <lua5.3/lua.hpp>

template<typename T>
T get_field(lua_State *L, std::string type,char *field, char *globalName) {
    return "invalid type";
}
template<>
std::string get_field<std::string>(lua_State *L, std::string type,char *field, char *globalName) {
    lua_getglobal(L, globalName);
    lua_getfield(L , -1, field);
    std::string thing = lua_tostring(L, -1);
    lua_pop(L, 1);
    return thing;
}
template<>
int get_field<int>(lua_State *L, std::string type,char *field, char *globalName) {
    lua_getglobal(L, globalName);
    lua_getfield(L , -1, field);
    int thing = lua_tointeger(L, -1);
    lua_pop(L, 1);
    return thing;
}

int testFunction(lua_State *L) {
    int times = lua_tonumber(L, -2);
    std::string noice = lua_tostring(L, -1);
    for (int i = 0; i < times;i++) {
        std::cout << noice;
    }
    return 0;
}

int main(int argc, char** argv) {
    const char *file = argv[1];


    //create a new lua state for each file with the pointer L
    lua_State *L = luaL_newstate();

    //open all lua libraries libraries
    luaL_openlibs(L);
    lua_register(L, "Testu", testFunction);

    int s = luaL_loadfile(L, file);

    if(!s)
        s = lua_pcall(L, 0, LUA_MULTRET, 0);

    //show any errors
    if(s){
        printf("Error: %s \n", lua_tostring(L, -1));
        lua_pop(L, 1);
    }
    /* lua_getglobal(L, "windowu");
    lua_getfield(L, -1, "window_title");
    const std::string window_titleu = lua_tostring(L, -1);
    lua_pop(L, 1);
    const char *window_title = window_titleu.c_str();

    lua_getfield(L, -1, "height");
    int window_height = lua_tointeger(L, -1);
    lua_pop(L, 1);

    lua_getfield(L, -1, "width");
    int window_width = lua_tointeger(L, -1);
    lua_pop(L, 1); */
    std::string window_titleu = get_field<std::string>(L,"string", (char*)"window_title", (char*)"windowu");
    const char *window_title = window_titleu.c_str();
    int window_height =get_field<int>(L, "int",(char*)"height", (char*)"windowu");
    int window_width = get_field<int>(L, "int",(char*)"width", (char*)"windowu");

    std::cout << window_titleu;
    std::cout << window_title;
    std::cout << window_height;
    std::cout << window_width;
    lua_close(L);
}
