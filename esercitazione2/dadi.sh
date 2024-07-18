#!/bin/bash

echo "iserisci il numero di facce dei dadi"
read facce
facce=$((facce))

if (($facce < 3)); then
    echo "ERROR: il numero delle facce non puo essere inferiore a 3"
else
    for ((i=1; i<=2;i++))
    do
        numero=$RANDOM
        numero=$((numero % facce))
        numero=$((numero+1))
        echo "dado n$i: $numero"
    done
fi