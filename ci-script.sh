#!/usr/bin/env bash
set -euo pipefail

set -x
clang --version
# clang -Wall -O2 -march=native test.c -o test
# ./test
# c++ -Wall -O2 -march=native test.c -o test2
# ./test2

git clone https://github.com/wolfpld/tracy
cd tracy
git checkout v0.11.1
mkdir build
cmake -B build -S capture -DCMAKE_BUILD_TYPE=Release -DLEGACY=ON -DUSE_WAYLAND=OFF
cmake --build build --config Release -j 2 -- VERBOSE=1
