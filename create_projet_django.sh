#!/bin/bash

mkdir /commun/helloworld
cd /commun/helloworld

echo "create a new virtual environnement install django + activated"
echo " 
django-admin startproject helloworld_project ."
echo "lancer le serveur"
echo "python manage.py migrate python manage.py runserver"

sudo pipenv install django==2.2.0
echo "activation d'environnement"
sudo pipenv shell 
echo "create project"


echo "visit http://127.0.0.1:8000/  "

