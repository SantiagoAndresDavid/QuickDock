#!/bin/bash

# Función para eliminar todos los contenedores excepto uno
function delete_all_container_except() {
    container_excepcion=$1

    echo "Contenedores eliminados excepto: $container_excepcion"
}

function delete_container() {
    containerId=$1
    if [ -z "$containerId" ]; then
        echo "Error: You must provide the ID or name of the container you want to keep."
        return 1
    fi

    docker rm $containerId

    echo "container delete $container_excepcion"
}


    