

void other_fun(void) {
}

void void_fun(void) {
    other_fun();
}

int main() {
    void_fun();
    return 0;
}