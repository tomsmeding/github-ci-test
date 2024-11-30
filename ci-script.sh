#!/usr/bin/env bash
set -x
clang --version
clang -Wall -O2 -march=native test.c -o test
./test
