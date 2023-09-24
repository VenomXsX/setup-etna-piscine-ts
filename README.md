# Script Bash pour setup votre dossier et repo

Les étapes sont ci-dessous


## 1. Cloner ce repo dans votre dossier parent

J'organise mes fichiers ETNA dans le dossier `~/ETNA/` par exemple. Clonez ce repo avec: 

`git clone https://github.com/VenomXsX/setup-etna-piscine-ts.git`

## 2. Déplacer le contenu de ce repo dans votre dossier parent
Cette commande va déplacer le script et un dossier nécessaire au fonctionnement du script dans votre dossier parent (càd le dossier `~/ETNA/` pour reprendre mon exemple):

`mv ./setup-etna-piscine-ts/setup.sh ./setup-etna-piscine-ts/setup_src .` 

Supprimez le repo vide:

`rm -r setup-etna-piscine-ts/`



## 3. Exécutez le script `setup.sh`

`bash setup.sh [nom-du-projet] [git-clone-url]`

Prenons le projet [01 - Majora's Mask Chapter I](https://intra.etna-alternance.net/#/sessions/9440/quest/51190).
Vous allez faire `bash setup.sh DTS1-Majoras_Mask_Chapter1 git@rendu-git.etna-alternance.net:module-9440/activity-51190/group-1011501`.

Ce script va cloner le repo de rendu de ce projet et le renommer en  `DTS1-Majoras_Mask_Chapter1`, il va également exécuter `npm install` pour récupérer toutes les dépendances dans `package.json`. Votre dossier devrait ressembler à ça:

```bash
. 
├── .gitignore
├── .eslintrc.json
├── linter.sh
├── node_modules 
├── package-lock.json 
├── package.json 
├── tsconfig.json
├── ..
└── README.md
```


## Utiliser le linter (ESLint)

Si vous n'avez pas de problèmes d'installation, vous devrez pouvoir utiliser le linter. Exécutez la commande suivante:

`npm run lint [votre-fichier-typescript]`

Ce script exécute la commande: `./node_modules/.bin/eslint --fix [votre-fichier-typescript]` comme c'est une commande giga longue, je vous ai fait un script pour ça.
