#!/usr/bin/env bash
set -ef

for dir in $(find . ! -path . ! -path ./.* -type d -maxdepth 1); do
    echo "-> Path: ${dir}"
    bash ${dir}/_test.sh
done
