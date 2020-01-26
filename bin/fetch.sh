#!/usr/bin/env bash

##
#
#
##

set -ef

##
#
##
run_as_root() {
  local CMD="$*"

  if [[ $EUID -ne 0 ]]; then
    CMD="sudo $CMD"
  fi

  $CMD
}

##
#
##
main() {
  local bin=/usr/local/bin/$1

  echo -e "\e[43m\e[97m\e[1m INFO \e[0m Installing '$1' as root..."
  run_as_root curl -sLo "${bin}" "$2?ts=$(date +%s)"
  run_as_root chmod 755 "${bin}"
  run_as_root chown 0:0 "${bin}"
  echo -e "\e[42m\e[97m\e[1m DONE \e[0m Type '$1 --help' to begin."
}

##
#
##
main "$@"
