#!/usr/bin/env bash
set -ef

dir=$(dirname "$0")

${dir}/.zionrc fetch neo https://raw.githubusercontent.com/zionrc/neo/master/neo.sh
