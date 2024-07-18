#!/bin/bash
# for arg in [lista]
# lista rappresenta l'insieme dei possibili valori gestiti dal ciclo
# arg rappresenta l'argomento che passiamo alla variabile, cioe' assume il valore
# di ognuna delle variabili rappresentate nella lista


# sintassi for
for i in 1 2 3 4 5
do
    echo "Numero $i"
done

echo
echo

# Due modi per contare fino a 10
# Sintassi standard
echo "contiamo fino a 10"
for i in 1 2 3 4 5 6 7 8 9 10
do
    echo -n "$i "
    # con l'opzione -n non viene inserita una nuova linea dopo l'output
    # fra un ciclo e l'altro 
done

echo
echo

# Sintassi stile C
LIMITE=10
echo "contiamo fino a $LIMITE, con una sintassi stile C"
for ((i=1; i<=LIMITE ; i++)) #doppie parentesi, costante LIMITE senza $
do
    echo -n "$i "
done

echo
echo


# Uso dell'operatore ',' del C per incrementare due variabili contemporaneamente
# posso incrementare anche diversamente.
echo "posso anche utilizzare due variabili e incrementarle contemporaneamente"
for ((a=1, b=0; a<=LIMITE; a++, b+=2)) # la virgola concatena le operazioni
do
    echo "$a-$b "
done

echo