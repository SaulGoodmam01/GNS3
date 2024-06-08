#!/bin/bash

# Actualizează lista de pachete
sudo apt-get update

# Instalează dependențele necesare
sudo apt-get install -y software-properties-common

# Adaugă repository-urile necesare
sudo add-apt-repository ppa:gns3/ppa -y

# Actualizează lista de pachete după adăugarea repository-ului
sudo apt-get update

# Instalează GNS3 și alte pachete necesare
sudo apt-get install -y gns3-server gns3-gui dynamips

# Instalare Docker (opțional, dacă e necesar pentru GNS3)
sudo apt-get install -y docker.io
sudo usermod -aG docker $USER

# Instalare Xfce și xrdp
sudo apt-get install -y xfce4 xfce4-goodies xrdp

# Configurare xrdp pentru a folosi Xfce
echo xfce4-session >~/.xsession
sudo systemctl restart xrdp

# Permite xrdp prin firewall
sudo ufw allow 3389

# Alte configurări și instalări necesare
echo "GNS3 și interfața grafică au fost instalate cu succes!"
