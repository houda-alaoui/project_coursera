#!/bin/bash

function guess_files {
    local correct_count=$(ls -1 | wc -l)
    local guess=-1

    while [ $guess -ne $correct_count ]; do
        read -p "Devinez le nombre de fichiers dans le répertoire actuel : " guess
        if [ $guess -lt $correct_count ]; then
            echo "Trop bas ! Essayez encore."
        elif [ $guess -gt $correct_count ]; then
            echo "Trop haut ! Essayez encore."
        else
            echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
        fi
    done
}

guess_files
