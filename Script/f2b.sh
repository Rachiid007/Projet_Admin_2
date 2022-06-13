#!/bin/bash

printf "Installation fail2ban\n"

sudo apt-get install fail2ban -y

: '
si vous voulez surcharger la config de base.
Vous pouvez ajouter dans /etc/fail2ban/jail.d
'
sleep 5

printf "Executer le\n"

systemctl start fail2ban

systemctl enable fail2ban

systemctl status fail2ban
