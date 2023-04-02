#!/bin/bash

echo "|-----------------------------------------|"
echo "|   Iniciando configufações do servidor   |"
echo "|-----------------------------------------|"

apt-get update
apt-get ugrade -y

echo " Iniciando instalação APACHE..."

apt-get install apache2 -y

echo " Instalando UNZIP..."

apt-get install unzip -y

echo " Baixando e copiando arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


echo "|---------|"
echo "|   FIM   |"
echo "|---------|"



