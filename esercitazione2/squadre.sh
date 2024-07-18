#!/bin/bash

echo "inserire il numero delle facce del dado maggiore di 0 e inferiore a 7"
read facce
if (($facce >= 1 && $facce <= 6)); then
    
    facce=$((facce))
    numero=$RANDOM
    numero=$((numero %= $facce))
    numero=$((numero+1))
    echo "è stato estratto il numero $numero"

    case $numero in
        "1")
        echo "sei nella scuadra del colore Rosso"
        ;;
        "2")
        echo "sei nella scuadra del colore Verde"
        ;;
        "3")
        echo "sei nella scuadra del colore Giallo"
        ;;
        "4")
        echo "sei nella scuadra del colore Blu"
        ;;
        "5")
        echo "sei nella scuadra del colore Rosa"
        ;;
        "6")
        echo "sei nella scuadra del colore Nero"
        ;;
    esac
else
    echo "ERRORE: il numero delle facce non è coretto"
fi




