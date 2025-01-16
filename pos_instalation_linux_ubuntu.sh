#!/bin/bash

# Pett97

# Atualizar repositórios
echo -e "\033[1;33mAtualizando repositórios...\033[0m"
sudo apt-get update -y

# Atualizar pacotes
echo -e "\033[1;33mAtualizando pacotes...\033[0m"
sudo apt-get upgrade -y

echo -e "\033[1;32mAtualização concluída!\033[0m"

# INSTALACAO CURL
echo -e "\033[1;33mInstalando CURL...\033[0m"
sudo apt-get install curl -y
echo -e "\033[1;32mCURL INSTALADO\033[0m"

# Instalação do BRAVE
echo -e "\033[1;33mInstalando o navegador Brave...\033[0m"
sudo curl -fsS https://dl.brave.com/install.sh | sh
echo -e "\033[1;32mNAVEGADOR BRAVE INSTALADO\033[0m"

# INSTALACAO PHP
echo -e "\033[1;33mInstalando PHP...\033[0m"
sudo apt-get install php -y
echo -e "\033[1;32mPHP INSTALADO\033[0m"

# INSTALACAO COMPOSER
echo -e "\033[1;33mInstalando Composer...\033[0m"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

echo -e "\033[1;32mCOMPOSER INSTALADO\033[0m"

# INSTALACAO OPENJDK
echo -e "\033[1;33mInstalando OpenJDK 21...\033[0m"
sudo apt install openjdk-21-jre-headless -y 
echo -e "\033[1;32mOPENJDK 21 INSTALADO\033[0m"

# INSTALACAO NVM (Node Version Manager)
echo -e "\033[1;33mInstalando o NVM...\033[0m"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# Carregar o NVM para o shell atual
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
echo -e "\033[1;32mNVM INSTALADO\033[0m"

# INSTALACAO NODE LTS
echo -e "\033[1;33mInstalando Node.js LTS...\033[0m"
nvm install --lts
echo -e "\033[1;32mNODE LTS INSTALADO\033[0m"

# INSTALACAO DOCKER
echo -e "\033[1;33mInstalando o Docker...\033[0m"
# Adicionar chave GPG do Docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Adicionar repositório do Docker
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Instalar Docker e componentes relacionados
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
echo -e "\033[1;32mDOCKER INSTALADO\033[0m"

# instalar flathub 
echo -e "\033[1;33mInstalando o Flatpak...\033[0m"
sudo apt install flatpak
echo "flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo"

echo -e "\033[1;32mScript de instalação concluído com sucesso!\033[0m"

echo -e "\033[1;33mADD DOCKER PARA USAR COM USUARIO COMUM\033[0m"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

echo -e "\033[1;32mREINICIE O PC E EXECUTE O PRÓXIMO SCRIPT\033[0m"

