#!/bin/bash
#if annidati
echo "Scegli un'opzione dalle seguenti:"
echo "1 per stampare il tuo nome"
echo "2 per stampare come ti chiamano"
echo "3 per stampare il nome del tuo animale"

read scelta
WORD=""

if [ $scelta == 1 ]
then
    read -p "Inserisci il tuo nome: " WORD 
    # l'opzione -p permette di scrivere l'output prima di leggere l'input
    # permette di risparmiare una riga di codice ed un'istruzione, alternativa
    # echo -n "Inserisci il tuo nome: "
    # read WORD
    echo "Il tuo nome è $WORD"
elif [ $scelta == 2 ]
then
    read -p "Inserisci come ti chiamano: " WORD
    echo "Ti chiamano $WORD"
elif [ $scelta == 3 ]
then
    read -p "Inserisci il nome del tuo animale: " WORD
    echo "Il tuo animale si chiama $WORD"
else
    echo "Scelta errata"
fi