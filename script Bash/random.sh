#!/bin/bash
# $RANDOM restituisce un intero casuale diverso ad ogni chiamata.
# Intervallo nominale: 0 - 32767 intero con segno 16 bit.
# Se e' necessario un intero casuale entro un dato intervallo, si usa l'operatore
# modulo (%), che restituisce il resto di una divisione

INTERVALLO=10

echo

numero=$RANDOM # restituisce un intero casuale fra 0 e 32767
numero=$((numero%INTERVALLO)) # restitusce un intero casuale fra 0 e INTERVALLO-1
# let "numero %= INTERVALLO" # l'istruzione let permette di eseguire dei calcoli, 
# espressione analoga a quanto scritto precedentemente
echo "Numero casuale inferiore a $INTERVALLO ---- $numero"