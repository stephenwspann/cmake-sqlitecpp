#!/bin/bash

rm -rf ./bin
rm -rf ./build
cmake -H. -Bbuild
cmake --build build -- -j3
./bin/hello
