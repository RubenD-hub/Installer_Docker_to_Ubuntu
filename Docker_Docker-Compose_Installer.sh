#!/bin/bash
clear
msg="
        =====================================================
                Instalador de Docker y Docker Compose                                    
        =====================================================                                                
"

tput setaf 128;
printf "$msg"
tput setaf 7;

printf "\n\n\tSe iniciara la Instalacion de Docker\n\t"
read -r -s -p "Presiona enter para continuar..."

sleep 2
# El siguiente comando elimina versiones de Docker previamente instaladas.
# for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
