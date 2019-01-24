#!/bin/bash

set -e

# Build helloworld
[ -d build ] || mkdir build
cd build
g++ ../helloworld.cpp -o hello
