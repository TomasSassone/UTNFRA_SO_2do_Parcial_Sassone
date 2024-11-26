#!/bin/bash

# Crear el Physical Volume (PV) en /dev/sde
pvcreate /dev/sde

# Crear el Volume Group (VG) vg_datos con los discos /dev/sdc y /dev/sde
vgcreate vg_datos /dev/sdc /dev/sde

# Crear el Volume Group (VG) vg_temp con el disco /dev/sdd
vgcreate vg_temp /dev/sdd

# Crear el Logical Volume (LV) lv_docker de 5MB en vg_datos
lvcreate -L 5M -n lv_docker vg_datos

# Crear el Logical Volume (LV) lv_workareas de 1.5GB en vg_datos
lvcreate -L 1.5G -n lv_workareas vg_datos

# Crear el Logical Volume (LV) lv_swap de 512MB en vg_temp
lvcreate -L 512M -n lv_swap vg_temp

# Formatear los volúmenes lógicos
mkfs.ext4 /dev/vg_datos/lv_docker
mkfs.ext4 /dev/vg_datos/lv_workareas
mkswap /dev/vg_temp/lv_swap

# Crear los puntos de montaje
mkdir -p /var/lib/docker
mkdir -p /work

# Montar los volúmenes lógicos
mount /dev/vg_datos/lv_docker /var/lib/docker
mount /dev/vg_datos/lv_workareas /work
swapon /dev/vg_temp/lv_swap

# Configuración permanente en /etc/fstab
echo "/dev/vg_datos/lv_docker   /var/lib/docker   ext4   defaults   0 0" >> /etc/fstab
echo "/dev/vg_datos/lv_workareas /work            ext4   defaults   0 0" >> /etc/fstab
echo "/dev/vg_temp/lv_swap       none             swap   sw         0 0" >> /etc/fstab

# Reiniciar el servicio Docker si está instalado
if systemctl is-active --quiet docker; then
  systemctl restart docker
fi

