#!/bin/sh
cmd="$1 $2 $3 $4 $5"

d=`date`
echo "Started at $d" > crash.log

while true; do
    echo "starting $cmd"
    $cmd
    d=`date`
    echo "$d: $cmd crashed with $?" >> crash.log
    sleep 1
done

