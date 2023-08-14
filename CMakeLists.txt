cmake_minimum_required(VERSION 3.25)

project(sako-tris)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)

target_link_libraries(${PROJECT_NAME} SDL2::SDL2 SDL2_image::SDL2_image PRIVATE)

add_subdirectory(src/)
