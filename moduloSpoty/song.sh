#!/bin/bash
song=$"pepe"
artist=$"martinez"
texto="¡Hola, esto se mueve constantemente!"
texto="$song-$artist"
longitud=15

while true; do
    for ((i = 0; i <= ${#texto}; i++)); do
        subcadena="${texto:$i:$longitud}"
        printf "%-15s" "$subcadena"
        sleep 1  # Ajusta el tiempo de espera según tus preferencias
        echo -n -e "\r"  # Retorno de carro para sobrescribir la línea
    done
done
