#!/bin/bash
echo ""
echo "############################################################# this is script for install python3.7 with django ##################"

sudo apt update -y 
sudo apt upgrade -y 
echo ""
echo "############################################################# update + upgrade##################"

sudo apt install build-essential -y 
echo ""
echo "############################################################# build-essential ##################"

sudo apt install libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev -y 
echo ""

sudo apt install libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev -y
sudo apt-get install python3-pip -y
echo ""
echo "############################################################# library install##################"

wget --directory-prefix=/commun/ https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tar.xz  
echo ""
echo "############################################################# extraction##################"

tar xf /commun/Python-3.7.1.tar.xz
echo ""

cd Python-3.7.1
echo ""

./configure --enable-optimizations
echo ""
echo "############################################################# script ./configure##################"

make -j 8
echo ""
echo "############################################################# compilation##################"


sudo make altinstall
echo ""
echo "############################################################# ultinstall##################"


pip3 install pipenv 
echo ""
echo "############################################################# pipenv install##################"

cd /commun/
mkdir django
cd django
echo "############################################################# cd rep##################"


pipenv install django==2.2.0
echo "############################################################# install django##################"

pipenv shell

