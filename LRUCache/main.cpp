#include <iostream>
#include "LRUC.h"

using namespace std;

int main() {
    LRUC *test = new LRUC(3);
    test->write('a', "testA");
    //test->write('b', "testB");
    //test->write('b', "testB");
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
