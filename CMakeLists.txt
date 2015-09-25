# Specify the minimum version for CMake
cmake_minimum_required(VERSION 2.6)

# Project's name
project(helloworld)

#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# The following folder will be included - this is for header files
#include_directories("${PROJECT_SOURCE_DIR}")

# first include sqlite3, add_subdirecory executes the CMakeLists.txt in the library
add_subdirectory("${PROJECT_SOURCE_DIR}/deps/SQLiteCpp/sqlite3")

# link the libraries
#target_link_libraries(hello ${SQLiteCpp_LIBRARIES})

# add helloworld.cpp as executable
add_executable(helloworld ${PROJECT_SOURCE_DIR}/src/main.cpp)

target_link_libraries(helloworld sqlite3)

# link all libraries - from 1st attempt
#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/deps/SQLiteCpp)
#find_package(SQLiteCpp REQUIRED)
#include_directories("${PROJECT_SOURCE_DIR}/deps/SQLiteCpp/include")
#include_directories("${PROJECT_SOURCE_DIR}/deps/SQLiteCpp/src")

