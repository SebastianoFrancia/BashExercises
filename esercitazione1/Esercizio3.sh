#!/bin/bash

echo "inserire 1 per il primo script, 2 per il secondo script"
read scielta


case $scielta in
    "1")
    ./fase1.sh
    ;;

    "2")
    ./fase2-3.sh
    ;;
    *)
    echo "ERRORE la scielta è errata"
    ;;
esac