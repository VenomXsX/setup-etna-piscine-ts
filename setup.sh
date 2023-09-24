#!/bin/bash
# Script pour setup votre dossier et clone automatiquement le repo pour la piscine TypeScript
# Utilisation: bash setup.sh [l'intitulé-du-projet] [le-lien-pour-clone]

cloneURL=$1
title=$2

if [ -z $cloneURL ]; then
	printf "\nVeuillez inclure \033[1;32mle lien du repo\033[0m à cloner en 1er argument\n"
	exit 1
fi

if [ -z $title ]; then
	printf "\nVeuillez entrer \033[1;32mun nom\033[0m en 2e argument\n"
	exit 1
fi

git clone $cloneURL $title

cp ./setup_src/* ./$title

cd $title
mkdir src/
echo "console.log('Hello world');" > src/index.ts
npm install

printf "\n\033[1;32mInstallation terminé\033[0m\n"
printf "\nExecuter la commande suivante:\n"
printf '\n\033[1;36mcd "$title"\033[0m\n'
printf '\n\033[1;36mnpm run dev\033[0m\n'
