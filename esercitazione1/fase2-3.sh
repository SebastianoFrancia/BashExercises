#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "inserisci il nome del file"
read nome

touch $nome.txt

let "risposta = 1"
while (($risposta != false))
do
    let "risposta = 1"
    echo "inserire la frase"
    read frase
    echo $frase >> $nome.txt
    echo "inserire 0 per usire per continuare 1"
    read risposta
done

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "cisono $(grep "[MnB]" $nome.txt) MnB"
echo "cisono $(grep "[1-9]" $nome.txt) numeri"
echo "non contiene prova $(grep -v "prova" $nome.txt)"
echo "cisono $(grep "[A-Z]" $nome.txt) caratteri maiuscoli"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"