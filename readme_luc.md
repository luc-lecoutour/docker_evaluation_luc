lancer le build des images :
sh build.s

run les dockers
sh run.sh

exo 1:

dans cette exercice, j'ai ajouté :
1 - dans le .env l'adresse du planner -> PLANNER=http://planner:3000
2  l'adresse du worker ADRESSE=http://server1
3 - dans la fonction sendTask du planner je rajoute le port du worker manuellement pour le moment

