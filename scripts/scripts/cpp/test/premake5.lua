-- premake5.lua
workspace "test"
    configurations { "Debug", "Release" }
    links {"/home/momofor/scripts/cpp/test/libs/Lib.a"}

project "test"
    kind "ConsoleApp"
    language "C++"
    targetdir "build"

    files { "**.hpp", "**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
