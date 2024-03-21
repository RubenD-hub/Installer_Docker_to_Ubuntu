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

printf "\n\n\tSe iniciara la instalacion de docker\n\t"
read -r -s -p "Presiona enter para continuar..."

sleep 2

printf  "$(tput setaf 214) \nSe actualizaran la lista de paquetes existentes \n"
sudo apt update

