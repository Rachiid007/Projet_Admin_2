# Projet d'Administration Système et Réseaux II

1. Cloner le repo :
```
git clone https://github.com/Rachiid007/sysAdminProject
```
2. Ouvrez une session dans votre VPS avec Putty ou SSH via votre clé publique/privée.

3. Installer [Docker sur le VPS](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)

### Commandes Docker utile :

### images

1. Créer une image 
```shell
docker build -t NOM_IMAGE .
```

2. Supprimer une image 
```shell
docker rmi NOM_IMAGE
```

### Containers

1. Démarrer un container
```shell
docker start NOM_CONTAINER
```

2. Arrêter un container
```shell
docker stop NOM_CONTAINER
```

3. Supprimer un container
```shell
docker rm NOM_CONTAINER
```

4. Afficher les logs
```shell
docker logs NOM_CONTAINER
```

5. Executer une commande dans un container qui tourne :

```shell
docker exec -ti NOM_ID /bin/bash
```

Donner un tag à l'image avant de l'envoyer sur le repo :

-   `docker tag [image-name] rachiid007/admin_project:[image-name]`
-   `docker push rachiid007/admin_project:[image-name]`

Reset Docker sur Ubuntu: Attention, tous les containers, images, volumes et network seront supprimés !

```shell
sudo docker system prune -a
```
