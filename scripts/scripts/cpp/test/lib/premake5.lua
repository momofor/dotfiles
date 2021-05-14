-- premake5.lua
workspace "test"
    configurations { "Release" }

project "MYLIB"
    kind "StaticLib"
    language "C++"
    targetdir "../libs"

    files { "**.hpp", "**.cpp" }

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
