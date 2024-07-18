#!/bin/bash

echo "questa è la secuenza di fibonacci: "

for (( i = 1, j = 1 ; i <= 34 ; i += j, j +=  i ));
do
    echo -n "$i" "$j"
done

echo