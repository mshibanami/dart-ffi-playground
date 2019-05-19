#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE:-$0}")" || exit

./lib/hello/build.sh
