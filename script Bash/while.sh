#!/bin/bash
# Generare 10 numeri casuali fra 1 e 50
CICLI=10
INTERVALLO=50
contatore=1
echo
echo "$CICLI numeri casuali, fra 1 e $INTERVALLO:"
echo "-------------------------"

# sintassi del while in bash:
while [ "$contatore" -le $CICLI ]
do
    numero=$RANDOM;
    let "numero = (numero % INTERVALLO) + 1"
    echo $numero
    contatore=$(($contatore+1))
    # let "contatore+=1"
done
echo "-------------------------"