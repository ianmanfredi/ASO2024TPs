#!/bin/bash


echo "Introduce un nombre:"
read nombre
response=$(curl -s "https://api.genderize.io/?name=${nombre}")
genero=$(echo $response | jq -r '.gender')
echo "el genero probable del nombre $nombre es: $genero"
