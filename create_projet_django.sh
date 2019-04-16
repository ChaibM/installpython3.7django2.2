#!/bin/bash

mkdir /commun/helloworld
cd /commun/helloworld

echo "create a new virtual environnement install django + activated"

sudo pipenv install django==2.2.0

echo "create project"
django-admin startproject helloworld_project .
sudo pipenv shell &

echo "lancer le serveur"
cd /commun/helloworld/
python manage.py migrate
python manage.py runserver
echo "activation d'environnement"

echo "visit http://127.0.0.1:8000/  "

