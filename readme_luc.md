lancer le build des images :
sh build.s

run les dockers
sh run.sh

exo 1:

dans cette exercice, j'ai ajouté :
1 - dans le .env l'adresse du planner -> PLANNER=http://planner:3000
2  l'adresse du worker ADRESSE=http://server1
3 - dans la fonction sendTask du planner je rajoute le port du worker manuellement pour le moment



................................................................
exo 3 - 4 et 5 non détaillé : 

Environments variables worker
```
MULT=true
ADD=true
PORT=8080
PLANNER=http://planner:3000
ADDRESS=worker
WORKTYPE=
```

## Démarrer le serveur
```bash
npm start # dans le dossier worker
npm start # dans le dossier planner
```

## Laner le docker :
Vous pouvez également utiliser les docker
```bash
chmod +x build.sh &&./build.sh chmod +x run.sh && ./run.sh
```

Ou vous pouvez utiliser également le fichier docker-compose.yml
