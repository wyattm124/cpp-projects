#include <iostream>
#include <unordered_map>

using namespace std;

int fib_rec (int i, unordered_map<int, int>& m) {
    if(m.find(i) != m.end())
         return m[i];
    else {
        int temp = fib_rec(i-1, m) + fib_rec(i-2, m);
        m[i] = temp;
        std::cout << "calculated : " << i << " : " << temp << std::endl;
        return temp;
    }
}

int fib (int i) {
    unordered_map<int, int> m;
    m[0] = 0;
    m[1] = 1;
    return fib_rec(i, m);
}

int main() {
    std::cout << fib(10) << std::endl;
    return 0;
}
