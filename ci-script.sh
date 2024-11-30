#!/usr/bin/env bash
set -x
clang --version
# clang -Wall -O2 -march=native test.c -o test
# ./test
# c++ -Wall -O2 -march=native test.c -o test2
# ./test2

git clone https://github.com/wolfpld/tracy
cd tracy
mkdir build
cmake -B build -S capture -DCMAKE_BUILD_TYPE=Release -DLEGACY=1
cmake --build build --config Release -j 2 -- VERBOSE=1
