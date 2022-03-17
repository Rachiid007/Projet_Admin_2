# Projet_Admin_2

Projet du cours "Administration système et réseaux II".

## Commandes docker utile

1. Cloner le repo :
```
git clone https://github.com/Rachiid007/Projet_Admin_2.git
```

- Créer une image : `docker build -t [image-name] .`
- Créer un container : `docker run -tid -p [container-port]:[host-machine-port] --name [container-name] [image-name]`
- Executer des commande dans un container : `docker exec -it [container-name] bash`
- Afficher les containers : `docker ps -a`
- Afficher les logs : `docker logs [container-name]`
- Supprimer les images inutilisées : `docker image prune -a`

- Stop All Containers: `docker kill $(docker ps -q)`
- Remove All Containers: `docker rm $(docker ps -a -q)`
- Remove All Docker Images: `docker rmi $(docker images -q)`

Donner un tag à l'image avant de l'envoyer sur le repo :

- `docker tag [image-name] rachiid007/admin_project:[image-name]`
- `docker push rachiid007/admin_project:[image-name]`
