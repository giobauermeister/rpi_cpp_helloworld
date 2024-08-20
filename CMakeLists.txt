cmake_minimum_required(VERSION 3.22)

# Set the project name and specify the C++ standard
project(helloworld VERSION 1.0 LANGUAGES CXX)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add source files
set(SOURCES
    src/main.cpp
)

# Add the executable target
add_executable(${PROJECT_NAME} ${SOURCES})