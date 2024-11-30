#!/usr/bin/env bash
clang -Wall -O2 -march=native test.c -o test
./test
