cmake_minimum_required(VERSION 3.0)
project(hello)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(LIBRARY libhello)

set(HEADERS
  hello.hpp)

set(LIBRARY_SOURCES
  hello.cpp
  ${HEADERS})

set(PROGRAM_SOURCES main.cpp)

add_library(${LIBRARY} SHARED ${LIBRARY_SOURCES})
set_target_properties(${LIBRARY} PROPERTIES
  OUTPUT_NAME "hello")

add_executable(hello ${PROGRAM_SOURCES})
target_link_libraries(hello ${LIBRARY})
