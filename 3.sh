#!/bin/bash

# Atualizando os pacotes do sistema
echo "Atualizando os pacotes do sistema..."
sudo apt update && sudo apt upgrade -y

# Instalando dependências básicas
echo "Instalando dependências básicas..."
sudo apt install -y curl git unzip

# Instalando o PHP 8.3 e as extensões necessárias (caso ainda não tenha feito)
echo "Instalando PHP 8.3 e extensões..."
sudo apt install -y php8.3 php8.3-cli php8.3-fpm php8.3-mysql php8.3-xml php8.3-mbstring php8.3-curl php8.3-zip php8.3-bcmath  php8.3-opcache

# Instalando o Composer (gerenciador de pacotes PHP)
echo "Instalando o Composer..."
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Verificando a instalação do Composer
echo "Verificando a instalação do Composer..."
composer --version

# Instalando o Laravel 11 globalmente
echo "Instalando Laravel 11 globalmente..."
composer global require laravel/installer

# Verificando o diretório onde o Composer instala os binários globais
COMPOSER_BIN_DIR=$(composer global config bin-dir --absolute)

# Adicionando o caminho correto ao bashrc
echo "Adicionando o Laravel e Composer ao bashrc..."
echo "export PATH=\"$COMPOSER_BIN_DIR:$PATH\"" >> ~/.bashrc

# Adicionando o alias sail ao bashrc
echo "Adicionando o alias sail ao bashrc..."
echo 'alias sail="sh $([ -f sail ] && echo sail || echo vendor/bin/sail)"' >> ~/.bashrc

# Aplicando as alterações no bashrc
source ~/.bashrc

# Verificando a instalação do Laravel
echo "Verificando a instalação do Laravel..."
laravel --version

# Verificando o alias sail
echo "Verificando o alias sail..."
alias sail

echo "Laravel 11 e alias sail foram instalados com sucesso!"
