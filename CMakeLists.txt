cmake_minimum_required(VERSION 3.16)
project(diffie_hellman C)

set(CMAKE_C_STANDARD 99)
link_directories(/usr/lib/x86_64-linux-gnu)
# 链接
add_executable(diffie_hellman main.c)

target_link_libraries(diffie_hellman -lcrypto)
