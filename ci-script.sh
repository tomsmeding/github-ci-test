#!/usr/bin/env bash
set -euo pipefail

set -x
clang --version

if false; then
  clang -Wall -O2 -march=native test.c -o test
  ./test
  c++ -Wall -O2 -march=native test.c -o test2
  ./test2
fi

if false; then
  git clone https://github.com/wolfpld/tracy
  cd tracy
  git checkout v0.11.1
  mkdir build
  cmake -B build -S capture -DCMAKE_BUILD_TYPE=Release -DLEGACY=ON -DUSE_WAYLAND=OFF
  cmake --build build --config Release -j 2 -- VERBOSE=1
fi

{
  git clone https://github.com/AccelerateHS/accelerate
  cd accelerate
  git submodule update --init --recursive
  cd cbits/tracy
  cmake -B build -S capture -DCMAKE_BUILD_TYPE=Release -DLEGACY=ON -DUSE_WAYLAND=OFF
  cmake --build build --config Release -j 2 -- VERBOSE=1
}
