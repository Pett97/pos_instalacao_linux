#!/bin/bash

# Pett97

# Atualizar repositórios
echo -e "\033[1;33mAtualizando repositórios...\033[0m"
sudo apt-get update -y

# Atualizar pacotes
echo -e "\033[1;33mAtualizando pacotes...\033[0m"
sudo apt-get upgrade -y

echo -e "\033[1;33mINSTALAR POSTMAN\033[0m"
flatpak install flathub com.getpostman.Postman -y 
echo -e "\033[1;32mPOSTMAN INSTALADO\033[0m"

echo -e "\033[1;33mINSTALAR PODMAN\033[0m"
flatpak install flathub io.podman_desktop.PodmanDesktop -y 
echo -e "\033[1;32mPODMAN INSTALADO\033[0m"

echo -e "\033[1;33mINSTALL DISCORD\033[0m"
flatpak install flathub com.discordapp.Discord -y
echo -e "\033[1;32mDISCORD INSTALADO\033[0m"

echo -e "\033[1;33mINSTALL TELEGRAM\033[0m"
flatpak install flathub org.telegram.desktop -y
echo -e "\033[1;32mTELEGRAM INSTALADO\033[0m"

echo -e "\033[1;33mINSTALL GIMP\033[0m"
flatpak install flathub org.gimp.GIMP -y
echo -e "\033[1;32mGIMP INSTALADO\033[0m"

echo -e "\033[1;33mINSTAL POPSICLE\033[0m"
flatpak install flathub com.system76.Popsicle -y
echo -e "\033[1;32mPOPSICLE INSTALADO\033[0m"

echo -e "\033[1;33minstall yarn\033[0m"
npm install --global yarn
echo -e "\033[1;32mYARN INSTALADO\033[0m"

echo -e "\033[1;33minstall apache netbens \033[0m"
sudo snap install netbeans --classic
echo -e "\033[1;32apachenetbens INSTALADO\033[0m"

echo -e "\033[1;33minstall mysql-workbench-community \033[0m"
sudo snap install mysql-workbench-community
echo -e "\033[1;32mysql-workbench-community INSTALADO\033[0m"

echo -e "\033[1;33mdocker pull dockurr/samba \033[0m"
docker pull dockurr/samba
echo -e "\033[1;32docker pull dockurr/samba INSTALADO\033[0m"

docker run -d -p 445:445 -e "USER=pett" -e "PASS=pett" -v "/home/samba:/storage" dockurr/samba

