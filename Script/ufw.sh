#!/bin/bash

printf "VPS de Rachid qui contient les services DNS Publique et VoIP\n\n"
printf "Starting ufw configuration for Rachid's VPS...\n"

sudo apt-get install ufw -y
sudo ufw default deny incoming # ⛔️ les connexions entrantes
sudo ufw default allow outgoing # ✅ le trafic sortant suivant les règles par défaut
printf "Basic configuration done !\n"
sleep 1
echo ""
printf "Allowing ports:\n" 
echo "----------------"
printf "22 (SSH)\n"
printf "53 (DNS)\n"
printf "5060 (SIP)\n"
printf "19000-20000 (RTP)\n"
sudo ufw allow 22 # ✅ port SSH
sudo ufw allow 53 # ✅ port DNS
sudo ufw allow 5060 # ✅ port SIP
sudo ufw allow 19000:20000/udp # ✅ port RTP qu'en UDP
sleep 1
printf "Done\n"
sudo ufw disable
sudo ufw enable
sudo ufw status
echo ""
printf "Nmap check :\n"
nmap 176.96.231.207