#!/bin/bash

#Script per crear un usuari

#primer comprovam si son l'usuari root
if [[ ${UID} -ne 0 ]]
then
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    exit 1
fi

read -p "Introduex el nom d'usuari: " USER_NAME

echo "creant l'usuari ${USER_NAME}"

