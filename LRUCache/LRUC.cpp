//
// Created by wyatt on 2/17/20.
//

#include <iostream>
#include "LRUC.h"

using namespace std;

LRUC::LRUC (int len) {
    sz = len;
    level = 0;
}

void LRUC::set_sz(int len) {
    sz = len;
    while (level > sz) {
        cout << "DELETE : " << cache.erase(cache.begin()) << endl;
        level--;
    }
    map.clear();
    for (int i = 0; i < cache.size(); i++)
        map[i] = cache[i];
}

string LRUC::read(char key) {
    if(map.find(key) == map.end())
        return NULL;
    int pos = map[key];
    V temp = cache.erase(pos);
    map.clear();
    for(int i = pos; i < level-1; i++)
        map[cache[i]] = i;
    cache.push_back(temp);
    map[level-1] = temp;
    return temp;
}

string LRUC::write(char key, string value) {
    if(map.find(key) != map.end()) {
        V temp = cache[map[key]];
        cache[map[key]] = value;
        return temp;
    }
    if (level == sz) {
        cout << "DELETE : " << cache.erase(cache.begin()) << endl;
        map.clear();
        for(int i = 0; i < level; i++)
            map[cache[i]] = i;
    } else {
        level++;
    }
    cache.push_back(value);
    map[key] = cache.back();
    return NULL;
}