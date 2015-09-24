# Specify the minimum version for CMake
cmake_minimum_required(VERSION 2.6)

# Project's name
project(helloworld)

# The following folder will be included - this is for header files
include_directories("${PROJECT_SOURCE_DIR}")

# add helloworld.cpp as executable
add_executable(helloworld ${PROJECT_SOURCE_DIR}/helloworld.cpp)

# link all libraries - from 1st attempt
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/deps/SQLiteCpp)
find_package(SQLiteCpp REQUIRED)
include_directories("${PROJECT_SOURCE_DIR}/deps/SQLiteCpp/include")
include_directories("${PROJECT_SOURCE_DIR}/deps/SQLiteCpp/src")

#link the libraries
target_link_libraries(hello ${SQLiteCpp_LIBRARIES})