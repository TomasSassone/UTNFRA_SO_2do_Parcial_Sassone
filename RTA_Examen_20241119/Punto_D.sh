#!/bin/bash

# Definir variables
ALUMNO_NOMBRE="Tomas"
ALUMNO_APELLIDO="Sassone"
DIVISION="311"
IP=$(hostname -I | awk '{print $1}')
DISTRIBUCION=$(lsb_release -d | cut -f2)
CORES=$(nproc)

# Crear las carpetas necesarias
mkdir -p /tmp/2do_parcial/alumno /tmp/2do_parcial/equipo

# Generar el archivo de datos del alumno
cat <<EOF > /tmp/2do_parcial/alumno/datos_alumno.txt
Nombre: $ALUMNO_NOMBRE
Apellido: $ALUMNO_APELLIDO
Division: $DIVISION
EOF

# Generar el archivo de datos del equipo
cat <<EOF > /tmp/2do_parcial/equipo/datos_equipo.txt
IP: $IP
Distribucion: $DISTRIBUCION
Cantidad de cores: $CORES
EOF

# Configurar sudoers para 2PSupervisores sin contraseña
echo "%2PSupervisores ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers > /dev/null

