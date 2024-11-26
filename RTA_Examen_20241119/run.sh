#!/bin/bash

# Variables
CONTAINER_NAME="nginx-container"
IMAGE_NAME="tomisasso/web1-sassone:latest"

# Eliminar contenedor existente (si lo hay)
docker rm -f "$CONTAINER_NAME" 2>/dev/null

# Ejecutar el contenedor
docker run -d -p 8080:80 --name "$CONTAINER_NAME" "$IMAGE_NAME"

