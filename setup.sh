#!/bin/bash
# Script pour setup votre dossier et clone automatiquement le repo pour la piscine TypeScript
# Utilisation: bash setup.sh [l'intitulé-du-projet] [le-lien-pour-clone]

title=$1
cloneURL=$2

if [ -z $cloneURL ]; then
	echo
	echo "Veuillez inclure le lien du repo à cloner"
	exit 1
else if [ $cloneURL != "git@rendu-git.etna-alternance.net"* ]; then
	echo
	echo "Le lien à cloner semble d'être incorrect"
	exit 1
fi

git clone $cloneURL $title
cp ./setup_src/.gitignore ./setup_src/linter.sh ./setup_src/package.json ./setup_src/package-lock.json ./setup_src/.eslintrc.json ./setup_src/tsconfig.json ./$title
cd $title
mkdir src/
npm install
