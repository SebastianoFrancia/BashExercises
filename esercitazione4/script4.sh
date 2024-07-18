#!/bin/bash

echo "scrivi il tuo nome"
read nome
echo "Bene, $nome! vieni volontario "
echo "quante volte sei stato interrogato?"
read numero

if [[ $numero =~ ^[0-5]+$ ]]; then
    numero_volte=$((numero+1)) #casting strinag --> numero
    echo "quindi qesta volta è il numero: $numero_volte"
else
    echo "hai sbagliato numero"
fi