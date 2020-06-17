#include <iostream>
#include <array>

#define SZ 6

void one_scoot(int *target, int *new_val, int *hold) {
    *hold = *target;
    *target = *new_val;
}

void four_swap(std::array<std::array<int, SZ>, SZ>& input, int i, int j) {
    int sz = SZ - 1;
    int temp1;
    int temp2;
    one_scoot(&(input[j][sz-i]), &(input[i][j]), &temp1);
    one_scoot(&(input[sz - i][sz-j]), &temp1, &temp2);
    one_scoot(&(input[sz - j][i]), &temp2, &temp1);
    one_scoot(&(input[i][j]), &temp1, &temp2);
}

void rotate(std::array<std::array<int, SZ>, SZ>& input) {
    for (int i = 0; i < SZ/2; i++)
        for(int j = 0; j < SZ/2; j++)
            four_swap(input, i, j);
}

int main() {
    std::array<std::array<int, SZ>, SZ> test;
    int cnt = 0;
    for(std::array<int, SZ>& arr : test)
        for(int& i : arr)
            i = ++cnt;
    rotate(test);
    for(std::array<int, SZ> arr : test) {
        for (int i : arr) {
            std::cout << i << " ";
        }
        std::cout << std::endl;
    }
    std::cout << "DONE" << std::endl;
    return 0;
}
