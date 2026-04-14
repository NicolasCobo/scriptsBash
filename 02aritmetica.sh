#!/bin/bash

#aquest escript ens mostra com
#realitzar les principals operacions aritmètiques

read -p "Introdueix el valor de X: " X
read -p "Introdueix el valor de Y: " Y

echo "Has introduit ${X} i ${Y}"
SUMA=$(echo "scale=2; ${X}+${Y}" | bc)
echo "${X}+${Y}=${SUMA}"
RESTA=$(echo "scale=2; ${X}-${Y}" | bc)
echo "${X}-${Y}=${RESTA}"
PRODUCTE=$(echo "scale=2; ${X}*${Y}" | bc)
echo "${X}*${Y}=${PRODUCTE}"

if [[ ${Y} = 0 ]]; 
then
    echo "Error: No se puede dividir entre cero"
    exit 1
fi

DIVISIO=$(echo "scale=2; ${X}/${Y}" | bc)
echo "${X}/${Y}=${DIVISIO}"




