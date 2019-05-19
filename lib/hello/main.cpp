#include <string.h>
#include "hello.hpp"

int main(int argc, char const* argv[]) {
    char* text = "aaa";
    char* aaa = hello_parrot(text, sizeof(aaa));

    hello_user user = hello_get_user();
    return 0;
}
