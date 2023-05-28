#!/bin/sh

VPy=3.9.0

echo "-------------------------------------"
echo "Instalando pacotes essenciais python"
echo "-------------------------------------"
sleep 5
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y
echo ""
echo "-------------------------------------"
echo "Fazendo o dowload da versão"$VPy" do python"
echo "-------------------------------------"
sleep 5
wget https://www.python.org/ftp/python/$VPy/Python-$VPy.tgz
echo ""
echo "-------------------------------------"
echo "Descompactando arquivos"
echo "-------------------------------------"
sleep 5
tar -xf Python-$VPy.*.tgz
echo ""
echo "-------------------------------------"
echo "Acessando pasta do Python-"$VPy" e Configurando"
echo "-------------------------------------"
sleep 5
cd Python-$VPy.*/
./configure --enable-optimizations -y
sudo make -j 4 
echo ""
echo "-------------------------------------"
echo "Instalando Python-"$VPy""
echo "-------------------------------------"
sleep 5
sudo make altinstall 
echo "-------------------------------------"
echo "Verificando a versão do Python"
echo "-------------------------------------"
sleep 5
python3 --version
echo ""
echo "-------------------------------------"
echo "Instalando PIP"
echo "-------------------------------------"
sleep 5
sudo apt install python3-pip
echo "-------------------------------------"
echo "Instalando ambientes virtuais Python3"
echo "-------------------------------------"
sleep 5
sudo apt install python3 python3-pip ipython3 -y
sudo pip3 install virtualenv 
echo ""
echo "-------------------------------------"
echo "Removendo arquivos .tgz"
echo "-------------------------------------"
sleep 5
rm -rf Python-$VPy.tgz*
echo ""
echo "-------------------------------------"
echo "FINALIZADO INSTALACAO DO PYTHON"$VPy""
echo "-------------------------------------"
echo ""
sleep 2