
target_link_libraries(${PROJECT_NAME} SDL2::SDL2 SDL2_image::SDL2_image PRIVATE)

add_executable(${PROJECT_NAME}
  main.cpp
)
