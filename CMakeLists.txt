cmake_minimum_required(VERSION 3.22)

project(crunch LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)

set(CRUNCH_SRC
        src/binary.cpp
        src/binary.hpp
        src/bitmap.cpp
        src/bitmap.hpp
        src/GuillotineBinPack.cpp
        src/GuillotineBinPack.h
        src/hash.cpp
        src/hash.hpp
        src/lodepng.cpp
        src/lodepng.h
        src/main.cpp
        src/MaxRectsBinPack.cpp
        src/MaxRectsBinPack.h
        src/packer.cpp
        src/packer.hpp
        src/Rect.cpp
        src/Rect.h
        src/str.cpp
        src/str.hpp
        src/tinydir.h
        )

add_executable(crunch ${CRUNCH_SRC})