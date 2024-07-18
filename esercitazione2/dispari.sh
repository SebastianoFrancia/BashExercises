#!/bin/bash

echo "inserire il numero un numero per visualizare tutti i numeri dispari precedenti"
read numero

numero=$((numero))

echo "i numeri dispari minori e posi di $numero sono:"
for ((i=1; i<numero; i++))
do
    if ((i % 2 != 0)); then
        echo "$i"
    fi

    
done