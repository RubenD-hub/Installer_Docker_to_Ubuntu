#!/bin/bash
clear
msg="
        =====================================================
                Instalador de Docker y Docker Compose                                    
        =====================================================                                                
"

tput setaf 10;
printf "$msg"
tput setaf 7;

printf "$(tput setaf 202) \n\n Se iniciara la instalacion de docker\n"
read -r -s -p " Presiona enter para continuar..."

printf  "$(tput setaf 214) \n\n 1-->  Se actualizaran la lista de paquetes existentes $(tput setaf 7)\n"
sudo apt update

printf  "$(tput setaf 214) \n\n 2-->  Se desinstalaran paquetes de versiones anteriores de Docker \n para evitar posibles conflictos $(tput setaf 7)\n"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

printf  "$(tput setaf 214) \n\n 3-->  Se instalaran algunos paquetes de requisitos $(tput setaf 7)\n"
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

printf  "$(tput setaf 214) \n\n 4-->  Añade la clave GPG del repositorio oficial de Docker $(tput setaf 7)\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

printf  "$(tput setaf 214) \n\n 5-->  Agrega el repositorio de Docker $(tput setaf 7)\n"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

printf  "$(tput setaf 214) \n\n 6-->  Se asegura que se instalara desde el repositorio oficial de Docker $(tput setaf 7)\n"
apt-cache policy docker-ce

printf  "$(tput setaf 214) \n\n 7-->  Se instalara Docker $(tput setaf 7)\n"
sudo apt install docker-ce

printf "$(tput setaf 202) \n\n Instalación completa\n"
read -r -s -p " Presiona enter para continuar..."

printf  "$(tput setaf 214) \n\n Por ultimo agregamos el usario al grupo de Docker y reinicie la shell $(tput setaf 7)\n"
tput setaf 7
sudo usermod -aG docker ${USER}
su - ${USER}
