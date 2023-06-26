#!/bin/bash

echo "Intalando atualizacao"
apt update -y
apt upgrede -y

echo "Instalando apache2 , unzip e apagand o index da pasta padrão do apache"
apt install apache2 -y
apt install unzip -y

rm /var/www/html/index.html


echo "Baixando aplicacao disponivel no edereco: https://github.com/Mathbull/js-developer-portfolio/archive/refs/heads/main.zip"

wget -P /temp/ https://github.com/Mathbull/js-developer-portfolio/archive/refs/heads/main.zip
cd /temp
unzip main.zip

echo "Copiando os arquivos para o diretorio padrao do apache"

cp /temp/js-developer-portfolio-main/* /var/www/html -R

echo "finalizado!!!!!!"
