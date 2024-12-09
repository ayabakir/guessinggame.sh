#!/bin/bash

# Fonction pour deviner le nombre de fichiers dans le répertoire
guess_files() {
  local file_count=$(ls -1 | wc -l)  # Compter le nombre de fichiers dans le répertoire actuel
  local guess=-1

  while [ "$guess" -ne "$file_count" ]; do
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess
    if [ "$guess" -lt "$file_count" ]; then
      echo "Votre estimation est trop basse. Essayez encore !"
    elif [ "$guess" -gt "$file_count" ]; then
      echo "Votre estimation est trop haute. Essayez encore !"
    fi
  done

  echo "Félicitations ! Vous avez deviné correctement le nombre de fichiers."
}

# Appeler la fonction guessinggame
guess_files
