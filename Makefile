README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "Date et heure : $(date)" >> README.md
    echo "Nombre de lignes de code : $$(wc -l < guessinggame.sh)" >> README.md

clean:
    rm -f README.md

