#pragma once

#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    char* given_name;
    char* middle_name;
    char* family_name;
} hello_user_name;

typedef struct {
    int month;
    int day;
} hello_birthday;

typedef struct {
    int age;
    hello_user_name* name;
    hello_birthday birthday;
    char* (*hello_user_function)();
} hello_user;

int hello_get_int_three();

char* hello_get_text_abc();

char* hello_parrot(const char* text, size_t length);

hello_user* hello_get_user();

#ifdef __cplusplus
}
#endif
