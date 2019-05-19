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

char* hello_parrot(const char* text, size_t length) {
    size_t null_prefixed_length = length + 1;
    char* parrotted = (char*)malloc(sizeof(char) * null_prefixed_length);
    strlcpy(parrotted, text, null_prefixed_length);
    return parrotted;
}

hello_user hello_get_user() {
    hello_user user;
    user.age = 30;
    return user;
}
