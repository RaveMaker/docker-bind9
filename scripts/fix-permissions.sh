#!/bin/bash

# bind uid=100 gid=101

curdir=$(pwd | cut -d'/' -f4-)
if [ "$curdir" != "docker-bind9/scripts" ]; then
    echo "run me from docker-bind9/scripts only"
    exit 1
fi
cd ..

chown root:root scripts -R
chmod 755 scripts -R

chown root:root entrypoint -R
chmod 755 entrypoint -R

chown root:101 etc -R
chmod 770 etc
chmod 660 etc/*

chown 100:101 log -R
chmod 770 log

chown 100:101 cache -R
chmod 770 cache

chown 100:101 zones -R
chmod 770 zones
chmod 660 zones/*

chown 100:101 zonesdb -R
chmod 770 zonesdb
