#!/bin/bash

logdir=log

curdir=$(pwd | cut -d'/' -f4-)
if [ "$curdir" != "docker-bind9/scripts" ]; then
    echo "run me from docker-bind9/scripts only"
    exit 1
fi
cd ..

for f in $logdir/*
do
    echo -n > "$f"
done
