#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "inserisci il nome del file"
read nome

touch $nome.txt

for ((i=0; i<6; i++))
do
    echo "inserisci una frase da aggiungere al file"
    read frase

    echo $frase >> $nome.txt
done
countParole=`wc -w $nome.txt | awk '{print $1}'`
countLettere=`wc -m $nome.txt | awk '{print $1}'`
echo "cisono $countParole parole"
echo "cisono $countLettere lettere"

echo "sono stati trovati le seguenti line con ciao:"
grep "ciao" $nome.txt

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"