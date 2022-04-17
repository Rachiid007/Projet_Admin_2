# Le répertoire où shm et les autres fichiers d'exécution seront stockés.

DefaultRuntimeDir ${APACHE_RUN_DIR}

# Le fichier dans lequel le serveur doit enregistrer son processus

PidFile ${APACHE_PID_FILE}

# le nombre de secondes avant l'expiration du délai de réception et d'envoi.

Timeout 300

# Autoriser ou non les connexions persistantes

KeepAlive On

# nombre maximal de requêtes à autoriser. lors d'une connexion persistante

MaxKeepAliveRequests 100

# nombre de secondes à attendre pour la prochaine requête du même client sur la même connexion.

KeepAliveTimeout 5

# Donner accèes à ces utilisateurs/groupes

User ${APACHE_RUN_USER}
Group ${APACHE_RUN_GROUP}

# le fichier des Log

ErrorLog ${APACHE_LOG_DIR}/error.log

# Inclure la configuration des modules

IncludeOptional mods-enabled/_.load
IncludeOptional mods-enabled/_.conf

# Inclure la liste des ports sur lesquels écouter

Include ports.conf

# nom du fichier à rechercher dans chaque répertoire pour des directives de configuration supplémentaires.

AccessFileName .htaccess

# empêcher les fichiers .htaccess et .htpasswd d'être affichés par les clients Web.

<FilesMatch "^\.ht">
Require all denied
</FilesMatch>

# Inclure des extraits génériques de déclarations

IncludeOptional conf-enabled/\*.conf

# Incluez les configurations des VirtualHost :

IncludeOptional sites-enabled/\*.conf
