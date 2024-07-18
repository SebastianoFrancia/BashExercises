#!/bin/bash

echo "inserire un anno"
read anno


if [ $(( anno-(anno/100)*100 )) == 0  ]; then
    if [ $(( anno-(anno/400)*400 )) == 0 ]; then
        echo "l'anno $anno è bisestile"    
    else
        echo "l'anno $anno è bisestile"
    fi
else
    if [ $(( anno-(anno/4)*4 )) == 0 ]; then
        echo "l'anno $anno è bisestile"    
    else
        echo "l'anno $anno non è bisestile"
    fi
fi