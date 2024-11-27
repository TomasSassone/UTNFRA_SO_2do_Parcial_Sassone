#!/bin/bash

# Variables
CONTAINER_NAME="nginx-container"
IMAGE_NAME="web1-sassone"
DOCKER_HUB_USER="tusuario"
DOCKERFILE_DIR="/home/tomas/UTN-FRA_SO_Examenes/202406/docker"

# Eliminar contenedor existente (si lo hay)
docker rm -f "$CONTAINER_NAME" 2>/dev/null

# Construir la imagen
docker build -t "$DOCKER_HUB_USER/$IMAGE_NAME" "$DOCKERFILE_DIR"

# Subir la imagen a Docker Hub
docker login -u "$DOCKER_HUB_USER"
docker push "$DOCKER_HUB_USER/$IMAGE_NAME"

# Ejecutar el contenedor
docker run -d -p 8080:80 --name "$CONTAINER_NAME" "$DOCKER_HUB_USER/$IMAGE_NAME"
