#!/bin/bash

logdir=log

for f in $logdir/*
do
    echo -n > "$f"
done
