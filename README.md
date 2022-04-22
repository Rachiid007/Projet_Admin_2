# Projet_Admin_2

Projet du cours "Administration système et réseaux II".

1. Cloner le repo :

```
git clone https://github.com/Rachiid007/sysAdminProject
```

2. [Installer Docker sur le VPS](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)

## Commandes docker utile :

-   Créer une image : `docker build -t [image-name] .`
-   Créer un container : `docker run -tid -p [container-port]:[host-machine-port] --name [container-name] [image-name]`
-   Afficher les containers : `docker ps -a`
-   Afficher les logs : `docker logs [container-name]`

Donner un tag à l'image avant de l'envoyer sur le repo :

-   `docker tag [image-name] rachiid007/admin_project:[image-name]`
-   `docker push rachiid007/admin_project:[image-name]`

Reset Docker sur Ubuntu: Attention, tous les containers, images, volumes et network seront supprimés !

```
sudo docker system prune -a
```

Executer une commande dans un container qui tourne :

```
docker exec -ti <CONTAINER ID> /bin/bash
```
