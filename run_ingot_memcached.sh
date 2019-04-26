#!/bin/bash

HOST="127.0.0.1"
PORT="12345"
MEMCACHED_OPTS=" -l $HOST -p $PORT -m 64 -vv"

# Start off by cleaning up ingot related items
echo "Cleaning up Atlas stuff"
rm -r /dev/shm/`whoami`/*
rm persist.log
echo "yes" | ../Atlas/runtime/build/tools/clean_mem

if [ -z "$1" ]; then
    CMD="./memcached $MEMCACHED_OPTS"
elif [ "$1" == "d" ]; then
    echo "Removing ./core"
    rm -f core
    CMD="./memcached-debug $MEMCACHED_OPTS"
elif [ "$1" == "g" ]; then
    CMD="gdb --args ./memcached-debug $MEMCACHED_OPTS"
else
    echo "Not a valid choice."
    exit 1
fi

# Run
echo "Running $CMD"
exec $CMD

