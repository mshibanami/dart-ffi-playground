#include <string.h>
#include "hello.hpp"

int main(int argc, char const* argv[]) {
    char* text = "aaa";
    char* aaa = hello_parrot(text, sizeof(aaa));

    hello_user* user = hello_get_user();
    printf("%s", user->hello_user_function());
    return 0;
}
