-- premake5.lua
workspace "qt_test"
    configurations { "Debug", "noice" }
    --[[ links {"MYLIB"}
    links {"SDL2"} ]]

project "qt_test"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        --[[ libdirs {"libs"}
        links {"MYLIB"} ]]

    filter "configurations:noice"
        defines { "NDEBUG" }
        optimize "On"
        --[[ libdirs {"libs"}
        links {"MYLIB"} ]]
        

