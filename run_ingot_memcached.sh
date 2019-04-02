#!/bin/bash

# Start off by cleaning up ingot related items
echo "Cleaning up Atlas stuff"
rm -rf /dev/shm/`whoami`/*
rm persist.log

echo "Running memcached on 127.0.0.1:12345"
./memcached -l 127.0.0.1 -p 12345 -m 64 -vv

