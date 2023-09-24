#!/bin/bash
# Script pour setup votre dossier et clone automatiquement le repo pour la piscine TypeScript
# Utilisation: bash setup.sh [l'intitulé-du-projet] [le-lien-pour-clone]

title=$1
cloneURL=$2

git clone $cloneURL $title
cp ./setup_src/.gitignore ./setup_src/linter.sh ./setup_src/package.json ./setup_src/package-lock.json ./setup_src/.eslintrc.json ./setup_src/tsconfig.json ./$title
cd $title
mkdir src/
npm install
