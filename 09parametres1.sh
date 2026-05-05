#!/bin/bash

#ens mostra l'escript executat
echo "Nom del script ${0}"


#mostram es PATH (RUTA) i el filename del script 
echo "El PATH: $(dirname ${0}) el fitxer seria $(basename ${0})"

#per determinar el numero de parametres 
NUMERO_DE_PARAMETRES=${#}

if [[ ${NUMERO_DE_PARAMETRES} -eq 0 ]]
then 
    echo "USAGE: ${0} USER_NAME [USER_NAME] ..."
    exit 1
fi

#${*} mostra el conjunt de parametres en una sola paraula ${1}, ${2}....${n}
echo "${*}"
echo
#${@} mostra el conjunt de paràmetres en paraules diferents "${1}", "${2}" ...... "${n}"
echo "${@}"

#estructura de control FOR  per interar els parametres
for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done
echo
#recorrer els parametres  amb while
echo "ITERACIO AMB WHILE"
while [[ ${#} -ge 1 ]]
do 
    #${1} indica el parametre  en la primera posicio
    USER_NAME=${1}
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    shift
done


