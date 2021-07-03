#include <luajit-2.1/lua.hpp>
#include <cstdio>
#include <string>
#ifdef __cplusplus
  #include "luajit-2.1/lua.hpp"
#else
#endif
#include <math.h>

//so that name mangling doesn't mess up function names
#ifdef __cplusplus
extern "C"{
#endif

static int c_swap (lua_State *L) {
    //check and fetch the arguments
	std::string arg1 = lua_tostring(L, 1);
    double arg2 = luaL_checknumber (L, 2);

    //push the results
    lua_pushnumber(L, arg2 * 2);
	lua_pushstring(L, arg1.c_str());

    //return number of results
    return 2;
}

static int my_sin (lua_State *L) {
    double arg = luaL_checknumber (L, 1);
    lua_pushnumber(L, arg * 10);
    return 1;
}

static int test_time (lua_State *L) {
	for (int i = 1; i < 100000; i++) {
		printf("%d" , i);
	}
	return 0;
}

//library to be registered
static const struct luaL_Reg mylib [] = {
      {"c_swap", c_swap},
      {"mysin", my_sin}, /* names can be different */
	  {"testTime" , test_time} ,
      {NULL, NULL}  /* sentinel */
    };

//name of this function is not flexible
int luaopen_mylib (lua_State *L){
    luaL_newlib(L, mylib);
    return 1;
}

#ifdef __cplusplus
}
#endif
