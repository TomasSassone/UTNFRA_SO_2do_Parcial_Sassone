ls
exit
ls
pwd
cd ..
ls
cd tomas
ls
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
cd UTN-FRA_SO_Examenes/
ls
cd /202406
cd 202406/
ls
cd ..
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh 
source ~/.bashrc
ls
sudo fdisk -l
ls
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk -l
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512 -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo systemctl restart docker
sudo systemctl status docker
ls /var/lib/docker/
sudo ls /var/lib/docker/
sudo nano /etc/fstab
ls
sudo cat /etc/fstab
df -h
tomas@VMDiscos:~$ sudo cat /etc/fstab
[sudo] password for tomas:
LABEL=cloudimg-rootfs   /        ext4   discard,errors=remount-ro       0 1
/dev/vg_datos/lv_docker   /var/lib/docker   ext4   defaults   0 0
/dev/vg_datos/lv_workareas /work            ext4   defaults   0 0
/dev/vg_temp/lv_swap       none             swap   sw         0 0
#VAGRANT-BEGIN
# The contents below are automatically generated by Vagrant. Do not modify.
vagrant /vagrant vboxsf uid=1000,gid=1000,_netdev 0 0
#VAGRANT-END
ls
ls -l RTA_Examen_20241119/
nano /home/tomas/RTA_Examen_20241119/Punto_A.sh 
ls
cat RTA_Examen_20241119/Punto_A.sh
clear
sudo nano /home/tomas/RTA_Examen_20241119/Punto_B.sh
clear
ls
cat RTA_Examen_20241119/Punto_B.sh 
clear
ls
cat RTA_Examen_20241119/Punto_B.sh 
chmod +x /home/tomas/RTA_Examen_20241119/Punto_B.sh 
sudo /home/tomas/RTA_Examen_20241119/Punto_B.sh 
vagrant halt
cat RTA_Examen_20241119/Punto_B.sh 
sudo nano RTA_Examen_20241119/Punto_B.sh 
clear
ls
cat RTA_Examen_20241119/Punto_B.sh 
clear
chmod +x /home/tomas/RTA_Examen_20241119/Punto_B.sh 
sudo /home/tomas/RTA_Examen_20241119/Punto_B.sh 
sudo /usr/local/bin/tomasAltaUser-Groups.sh <usuario_origen> <ruta_del_archivo_Lista_Usuarios.txt>
sudo /usr/local/bin/tomasAltaUser-Groups.sh tomas /home/tomas/lista_usuarios.txt
ls -l /usr/local/bin/tomasAltaUser-Groups.sh
ls -l /usr/local/bin
sudo /usr/local/bin/rootAltaUser-Groups.sh tomas /home/tomas/lista_usuarios.txt
cat /usr/local/bin/rootAltaUser-Groups.sh 
sudo /usr/local/bin/rootAltaUser-Groups.sh 
cat /usr/local/bin/rootAltaUser-Groups.sh 
sudo /usr/local/bin/rootAltaUser-Groups.sh 
sudo nano /home/tomas/RTA_Examen_20241119/Punto_C.sh 
clear
cat /home/tomas/RTA_Examen_20241119/Punto_C.sh 
sudo /home/tomas/RTA_Examen_20241119/Punto_C.sh 
chmod -x /home/tomas/RTA_Examen_20241119/Punto_C.sh 
./home/tomas/RTA_Examen_20241119/Punto_C.sh 
cat /home/tomas/RTA_Examen_20241119/Punto_C.sh
chmod +x /home/tomas/RTA_Examen_20241119/Punto_C.sh
cd RTA_Examen_20241119/
ls
./Punto_C.sh 
pwd
ls
cat RTA_Examen_20241119/Punto_A.sh
cat RTA_Examen_20241119/Punto_B.sh
cat RTA_Examen_20241119/Punto_C.sh
cat RTA_Examen_20241119/Punto_D.sh
cat RTA_Examen_20241119/Punto_C.sh
history -a
history 
cat RTA_Examen_20241119/Punto_C.sh
docker login -u tomisasso
ls /home/tomas/RTA_Examen_20241119/
ls
ls UTN-FRA_SO_Examenes/
ls UTN-FRA_SO_Examenes/ 202406
ls UTN-FRA_SO_Examenes/202406
ls UTN-FRA_SO_Examenes/202406/docker/
cat UTN-FRA_SO_Examenes/202406/docker/index.html 
pwd UTN-FRA_SO_Examenes/202406/docker/index.html 
cat /home/tomas/UTN-FRA_SO_Examenes/202406/docker/index.html
history
ls UTN-FRA_SO_Examenes/202406/docker/
ls UTN-FRA_SO_Examenes/202406/
ls UTN-FRA_SO_Examenes/202406/docker/
cat /home/tomas/UTN-FRA_SO_Examenes/202406/docker/index.html
cd /home/tomas/UTN-FRA_SO_Examenes/202406/docker
ls
nano Dockerfile
ls
clear
ls
cat Dockerfile 
clear
cd /home/tomas/UTN-FRA_SO_Examenes/202406/docker
ls
docker build -t tomisasso/nginx-custom .
grep docker /etc/group
sudo usermod -aG docker $USER
docker build -t tomisasso/nginx-custom .
sudo vgdisplay vg_datos
sudo lvextend -L +2G /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
df -h
docker build -t tomisasso/nginx-custom .
docker run -d -p 8080:80 --name nginx-container tomisasso/nginx-custom
docker ps
sudo ufw disable
sudo iptables -F
ip a
hostname -I
nano /home/tomas/UTN-FRA_SO_Examenes/202406/docker/index.html
clear
ls
newgrp docker
docker build -t tomisasso/nginx-custom .
cd /home/tomas/UTN-FRA_SO_Examenes/202406/docker/
ls
docker build -t tomisasso/nginx-custom .
docker run -d -p 8080:80 --name nginx-container tomisasso/nginx-custom
docker stop nginx-container
docker rm nginx-container
docker run -d -p 8080:80 --name nginx-container tomisasso/nginx-custom
docker ps
cd
ls
cd RTA_Examen_20241119/
ls
cat Punto_A.sh
nano Punto_C.sh 
ls
cd RTA_Examen_20241119/
ls
nano run.sh
clear
ls
clear
reset
clear
docker tag tomisasso/nginx-custom tomisasso/web1-sassone:latest
docker login
docker tag tomisasso/nginx-custom tomisasso/web1-sassone:latest
docker push tomisasso/web1-sassone:latest
docker ps
cat RTA_Examen_20241119/run.sh 
docker login
chmod +x run.sh
sudo chmod +x run.sh
sudo chmod +x /home/tomas/RTA_Examen_20241119/run.sh 
cd RTA_Examen_20241119/
ls
./run.sh
docker stop nginx-container
./run.sh
docker stop nginx-container
pwd
ls
nano Punto_D.sh 
cd RTA_Examen_20241119/
ls
cat Punto_D.sh 
./Punto_D.sh
chmod +x /home/tomas/RTA_Examen_20241119/Punto_D.sh
ls
./Punto_D.sh
ls /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/alumno/datos_alumno.txt
ls /tmp/2do_parcial/equipo/datos_equipo.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
getent group 2PSupervisores
ls -l
cat Punto_A.sh.save 
rm Punto_A.sh.save
ls
chmod +x /home/tomas/RTA_Examen_20241119/Punto_A.sh
ls
cat Punto_B.sh 
ls /usr/local/bin
cat /usr/local/bin/rootAltaUser-Groups.sh 
cd
ls
git clone https://github.com/TomasSassone/UTNFRA_SO_2do_Parcial_Sassone.git
cp -r /home/tomas/UTN-FRA_SO_Examenes/202406/ /home/tomas/UTNFRA_SO_2do_Parcial_Tomas_Sassone/
cp -r /home/tomas/RTA_Examen_$(date +%Y%m%d)/ /home/tomas/UTNFRA_SO_2do_Parcial_Tomas_Sassone/
ls
cp -r /home/tomas/RTA_Examen_$20241119/ /home/tomas/UTNFRA_SO_2do_Parcial_Tomas_Sassone/
cp -r /home/tomas/RTA_Examen_20241119/ /home/tomas/UTNFRA_SO_2do_Parcial_Tomas_Sassone/
ls
rm UTNFRA_SO_2do_Parcial_Tomas_Sassone/
rm -r UTNFRA_SO_2do_Parcial_Tomas_Sassone/
ls
cp -r /home/tomas/UTN-FRA_SO_Examenes/202406/ /home/tomas/UTNFRA_SO_2do_Parcial_Sassone/
cp -r /home/tomas/RTA_Examen_20241119/ /home/tomas/UTNFRA_SO_2do_Parcial_Sassone/
history -a
$HOME/.bash_history
sudo $HOME/.bash_history
cp ~/.bash_history /home/tomas/UTNFRA_SO_2do_Parcial_Sassone/
ls
cd UTNFRA_SO_2do_Parcial_Sassone/
ls
cd ..