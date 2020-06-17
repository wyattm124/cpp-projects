#include <iostream>
#include <array>

int max_diff_two (std::array<int, 100> input) {
    std::array<int, 100> fromStart = {0};
    std::array<int, 100> fromEnd = {0};
    bool first = true;
    int least;
    int curr;
    int md = 0;
    for(int i = 0; i < fromStart.size(); i++) {
        curr = input[i];
        if (first) {
            least = curr;
            first = false;
        }
        if (curr < least)
            least = curr;
        fromStart[i] = curr - least;
    }
    first = true;
    for(int i = fromEnd.size(); i >= 0 ; i--) {
        curr = input[i];
        if (first) {
            least = curr;
            first = false;
        }
        if (curr < least)
            least = curr;
        fromEnd[i] = curr - least;
    }
    for(int i = 0; i < fromStart.size()-1; i++)
        md = std::max(md, fromStart[i] + fromEnd[i+1]);
    return md;
}

int max_diff (int input [], int len) {
    bool first = true;
    int least;
    int curr;
    int md = 0;
    for(int i = 0; i < len; i++) {
        curr = input[i];
        if (first) {
            least = curr;
            first = false;
        }
        if (curr < least)
            least = curr;
        if ((curr - least) > md)
            md = (curr - least);
    }
    return md;
}

int main() {
    std::array<int, 100> input = {1, 2, 3, -4, 99, 66, -1, 8, 9, 10, 9};
    std::cout << "Answer is : " << max_diff_two(input) << std::endl;
    return 0;
}
