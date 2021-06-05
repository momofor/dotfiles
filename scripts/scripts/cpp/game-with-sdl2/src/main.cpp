#include <stdio.h>
#include <iostream>
#include <SDL2/SDL.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_timer.h>
#include <SDL2/SDL_video.h>
#include <lua5.3/lua.h>
#include <lua5.3/lua.hpp>
#include <typeinfo>

int testFunction(lua_State *L) {
    int times = lua_tonumber(L, -2);
    std::string noice = lua_tostring(L, -1);
    for (int i = 0; i < times;i++) {
        std::cout << noice;
    }
    return 0;
}

template<typename T>
T get_field(lua_State *L, char *field, char *globalName) {
    return "invalid type";
}
template<>
std::string get_field<std::string>(lua_State *L, char *field, char *globalName) {
    lua_getglobal(L, globalName);
    lua_getfield(L , -1, field);
    std::string thing = lua_tostring(L, -1);
    lua_pop(L, 1);
    return thing;
}
template<>
int get_field<int>(lua_State *L,char *field, char *globalName) {
    lua_getglobal(L, globalName);
    lua_getfield(L , -1, field);
    int thing = lua_tointeger(L, -1);
    lua_pop(L, 1);
    return thing;
}

//For SDL, you should have the following main method:
int main(int argc, char** argv)
{
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
    std::string window_titleu = get_field<std::string>(L, (char*)"window_title", (char*)"windowu");
    const char *window_title = window_titleu.c_str();
    int window_height = get_field<int>(L,(char*)"height", (char*)"windowu");
    int window_width = get_field<int>(L,(char*)"width", (char*)"windowu");
    int r,g,b;
    r = get_field<int>(L, (char*)"r", (char*)"windowu");
    g = get_field<int>(L, (char*)"g", (char*)"windowu");
    b = get_field<int>(L, (char*)"b", (char*)"windowu");

    std::cout << window_titleu;
    std::cout << window_title;
    std::cout << window_height;
    std::cout << window_width << " " << r << " " << g << " " << b;
    lua_close(L);


    // #####################################################
    //
    //

    //Initialize all the systems of SDL
    SDL_Init(SDL_INIT_EVERYTHING);


    //Create a window with a title, "Getting Started", in the centre
    //(or undefined x and y positions), with dimensions of 800 px width
    //and 600 px height and force it to be shown on screen
    SDL_Window* window = SDL_CreateWindow(window_title, SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED, window_width, window_height, SDL_WINDOW_SHOWN);


    //Create a renderer for the window created above, with the first display driver present
    //and with no additional settings
    SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

    for(bool keep_running = true; keep_running;) {
        for(SDL_Event ev; SDL_PollEvent(&ev);) {
            if(ev.type == SDL_QUIT) {
                keep_running = false;
            }
        }
        SDL_SetRenderDrawColor(renderer, r, g, b, 255);
        SDL_RenderClear(renderer);
        SDL_RenderPresent(renderer);
    }

    /* //Set the draw color of renderer to green
    SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);

    //Clear the renderer with the draw color
    SDL_RenderClear(renderer);

    //Update the renderer which will show the renderer cleared by the draw color which is green
    SDL_RenderPresent(renderer); */

    //Pause for 3 seconds (or 3000 milliseconds)
    SDL_Delay(3000);
    
    //Destroy the renderer created above
    SDL_DestroyRenderer(renderer);

    //Destroy the window created above
    SDL_DestroyWindow(window);

    //Close all the systems of SDL initialized at the top
    SDL_Quit();

    return 0;
}
