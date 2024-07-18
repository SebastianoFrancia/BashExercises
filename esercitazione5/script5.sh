#!/bin/bash


#echo "__________________________"
#cat testo.txt | grep "DF"
#echo "__________________________"

testo="Questa è la nuova linea da aggiungere al file"
echo "$testo" >> testo.txt

contenuto=$(cat testo.txt)

echo "$contenuto"