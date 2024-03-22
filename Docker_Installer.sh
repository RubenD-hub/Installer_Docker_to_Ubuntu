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

