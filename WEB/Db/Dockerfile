FROM mysql:latest

#Copie de ce qu'il y a dans init_db donc le schéma db.sql vers entrypoint qui est exécuté au moment où votre conteneur de base de données commence à s'exécuter
COPY ./init_db/ /docker-entrypoint-initdb.d/
