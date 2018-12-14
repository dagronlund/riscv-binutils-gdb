#! /bin/bash

THREADS=`expr $(cat /proc/cpuinfo | awk '/^processor/{print $3}' | wc -l) \* 2`

if [ $# -lt 2]
then
make -j$THREADS
else
make -j$THREADS $2
fi