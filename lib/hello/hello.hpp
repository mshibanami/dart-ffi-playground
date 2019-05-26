#pragma once

#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

struct hello_user {
    int age;
};

int hello_get_int_three();

char* hello_get_text_abc();

char* hello_parrot(const char* text, size_t length);

hello_user* hello_get_user();

#ifdef __cplusplus
}
#endif
