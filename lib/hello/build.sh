#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE:-$0}")" || exit

BUILD_DIR="./build"
mkdir -p $BUILD_DIR
cmake . -B $BUILD_DIR -D CMAKE_BUILD_TYPE=Debug
make --directory=$BUILD_DIR
