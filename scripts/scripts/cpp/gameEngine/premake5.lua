-- premake5.lua
workspace "gameEngine"
    configurations { "Debug", "noice" }
    links {"gameEngineLib"}

project "gameEngine"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        libdirs {"libs"}

    filter "configurations:noice"
        defines { "NDEBUG" }
        optimize "On"
        libdirs {"libs"}

