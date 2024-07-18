#!/bin/bash

mkdir -p sorgente
cd sorgente
touch prova.txt
cd ..
mkdir -p destinazione

echo "cartelle generate"

cp -f sorgente/prova.txt destinazione/provaCopiata.txt
echo "file copiato"