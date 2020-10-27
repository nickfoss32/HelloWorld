cmake_minimum_required(VERSION 3.15)

add_executable(helloWorld main.cpp)

target_compile_features(helloWorld PRIVATE cxx_std_17)