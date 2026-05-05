#!/bin/bash

#en aquest script podrem passar tres arguments: start, stop i status
#segon l'argument que passem donarem un missatge per pantalla que sera:
#starting, stopping, the status is....
#si no es cap d'aquests valors la sortida sera: valor no valid...

#if [[ "${1}" = "start" ]]
#then
#    echo "Starting..."
#elif [[ "${1}" = "stop" ]]
#then 
#    echo "Stopping..."
#elif [[ "${1}" = "status" ]]
#then 
#    echo "the status is..."
#else
#    echo "Enter a valid option..."
#fi

#ho farem amb CASE

case "${1}" in
    start|s|--start|starting)
        echo "Starting..."
        ;;
    stop)
        echo "Stopping..."
        ;;
    status)
        echo "The status is..."
        ;;
    *)
        echo "Enter a valid option..."
        ;;
esac













