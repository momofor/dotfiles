-- premake5.lua
workspace "consoleGameEngine"
    configurations { "Release" }

project "consoleGameEngineLib"
    kind "StaticLib"
    language "C++"
    targetdir "../libs"

    files { "headers/**.hpp", "src/**.cpp" }

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
