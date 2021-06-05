-- premake5.lua
workspace "game-with-sdl2"
    configurations { "Debug", "noice" }
    links {"SDL2"}
    links{"lua5.3"}

project "game-with-sdl2"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:noice"
        defines { "NDEBUG" }
        optimize "On"

