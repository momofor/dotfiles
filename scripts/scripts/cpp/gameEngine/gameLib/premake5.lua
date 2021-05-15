-- premake5.lua
workspace "gameEngine"
    configurations { "Release" }

project "gameEngineLib"
    kind "StaticLib"
    language "C++"
    targetdir "../libs"

    files { "headers/**.hpp", "src/**.cpp" }

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
