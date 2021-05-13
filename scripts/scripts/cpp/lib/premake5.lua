-- premake5.lua
workspace "Lib"
    configurations { "Release" }

project "Lib"
    kind "StaticLib"
    language "C++"

    files { "**.hpp", "**.cpp" ,"**.a"}

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
