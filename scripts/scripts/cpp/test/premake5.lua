-- premake5.lua
workspace "test"
    configurations { "Debug", "noice" }
    links {"MYLIB"}

project "test"
    kind "ConsoleApp"
    language "C++"

    files { "**.hpp", "**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        libdirs {"libs"}

    filter "configurations:noice"
        defines { "NDEBUG" }
        optimize "On"
        libdirs {"libs"}

