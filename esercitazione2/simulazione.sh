#!/bin/bash

echo "inserire 0 per simulare il lancio dei dadi o 1 per il lancio delle monete"
read scelta

case $scelta in 
    "0")
        echo "inserire il numero di dadi da lanciare"
        read volte
        if (($volte >= 0)); then
            echo "iserisci il numero di facce dei dadi"
            read facce
            facce=$((facce))

            if (($facce < 3)); then

                echo "ERROR: il numero delle facce non puo essere inferiore a 3"

            else

                for ((i=1; i<=$volte;i++))
                do    
                    numero=$RANDOM
                    numero=$((numero % facce))
                    numero=$((numero+1))
                    echo "dado n$i: $numero"
                done

            fi
        else
            echo "ERRORE: il numero delle volte non è accetabile"
        fi
    ;;
    "1")
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
    ;;
    *)
        echo "ERRORE: non hai inserito 0 o 1"
    ;;
esac
