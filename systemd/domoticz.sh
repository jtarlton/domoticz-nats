#!/bin/bash
# Systemd helper script for managing the Domoticz Service.
#
set -e

function usage {
  echo "$0 (start|stop)" 1>&2
  exit 2
}

function start {
  docker-compose up -d
}

function stop {
  docker-compose down
}

#
# Run the requested command's handler.
# $1 - the command
#
case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  *)
    usage
esac

