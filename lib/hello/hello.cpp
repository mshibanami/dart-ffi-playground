#include "hello.hpp"
#include <string.h>
#include <iostream>

using namespace std;

int hello_get_int_three() {
    return 3;
}

char* hello_get_text_abc() {
    return "abc";
}

char* hello_user_function() {
    auto funcName = "hello_user_function";
    char* result = (char*)malloc(sizeof(char*) * strlen(funcName));
    strcpy(result, funcName);
    return result;
}

char* hello_parrot(const char* text, size_t length) {
    size_t null_prefixed_length = length + 1;
    char* parrotted = (char*)malloc(sizeof(char) * null_prefixed_length);
    strlcpy(parrotted, text, null_prefixed_length);
    return parrotted;
}

hello_user* hello_get_user() {
    hello_user_name* name = (hello_user_name*)malloc(sizeof(hello_user_name*));

    auto given = "Manabu";
    auto family = "Nakazawa";

    name->given_name = (char*)malloc(sizeof(char*) * strlen(given));
    strcpy(name->given_name, given);
    name->middle_name = nullptr;
    name->family_name = (char*)malloc(sizeof(char*) * strlen(family));
    strcpy(name->family_name, family);

    hello_user* user = (hello_user*)malloc(sizeof(hello_user*));
    user->age = 30;
    user->name = name;
    user->hello_user_function = hello_user_function;

    return user;
}
