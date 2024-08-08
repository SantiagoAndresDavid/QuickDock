#!/bin/bash

# Función para eliminar todos los contenedores excepto uno
function delete_all_container_except() {
    container_excepcion=$1
    if [ -z "$container_excepcion" ]; then
        echo "Error: You must provide the ID or name of the container you want to keep."
        return 1
    fi

    # Obtener todos los contenedores excepto el especificado
    containers_to_delete=$(docker ps -aq --filter "id!=${container_excepcion}" --filter "name!=${container_excepcion}")

    if [ -z "$containers_to_delete" ]; then
        echo "No hay contenedores para eliminar o el contenedor especificado no existe."
        return 0
    fi

    # Eliminar los contenedores
    docker rm -f $containers_to_delete

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


    