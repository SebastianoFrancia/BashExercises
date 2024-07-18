#!/bin/bash

echo "inserire il numero di volte da lanciare la moneta"
read volte
volte=$(($volte))

while (($volte > 0))
do
    numero=$RANDOM
    numero=$(( numero %= 2))

    if (($numero == 0)); then
        echo "testa"
    else
        echo "croce"
    fi
    
    volte=$(($volte-1))
done


