//
// Created by wyatt on 2/17/20.
//

#include <unordered_map>
#include <vector>

using namespace std;

class LRUC {
    public:
        LRUC(int length);
        void set_sz(int len);
        string read(char key);
        string write(char key, string value);
    private:
        int sz;
        int level;
        vector<string> cache;
        unordered_map<char, int> map;
};
