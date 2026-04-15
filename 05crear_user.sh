#!/bin/bash

function usage(){
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    exit 1
}




#Script per crear un usuari

#primer comprovam si son l'usuari root
if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introduex el nom d'usuari: " USER_NAME

echo "creant l'usuari ${USER_NAME}"

