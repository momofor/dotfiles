-- premake5.lua
workspace "test"
    configurations { "Debug", "noice" }
    links {"MYLIB"}

project "test"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        libdirs {"libs"}
        links {"MYLIB"}

    filter "configurations:noice"
        defines { "NDEBUG" }
        optimize "On"
        libdirs {"libs"}
        links {"MYLIB"}
        

