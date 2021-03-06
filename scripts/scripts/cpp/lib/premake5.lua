-- premake5.lua
workspace "MYLIB"
    configurations { "Release" }

project "MYLIB"
    kind "StaticLib"
    language "C++"

    files { "**.hpp", "**.cpp" }

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
