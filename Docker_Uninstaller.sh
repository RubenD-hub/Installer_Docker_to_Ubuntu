#!/bin/bash
clear
msg="
        ==================================================
                Desinstalador de Docker y recursos                                    
        ==================================================                                                
"

tput setaf 10;
printf "$msg"
tput setaf 7;

printf "$(tput setaf 202) \n\n Se iniciara la Desinstalacion de Docker y Recursos\n"
read -r -s -p " Presiona enter para continuar..."

printf  "$(tput setaf 214) \n\n 1-->  Se desinstalara Docker y los paquetes existentes $(tput setaf 7)\n"
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

printf  "$(tput setaf 214) \n\n 2-->  ¿Desea eliminar las imagenes, contenedores y volumnes de la ruta predeterminada? \n"
PS3='Ingrese su opcion: '
select opt in Si No
do
    case $REPLY in
        "1")
            echo "Se procede a eliminar los elementos..."
            sudo rm -rf /var/lib/docker
            sudo rm -rf /var/lib/containerd
            break
            ;;
        "2")
            echo "Se mantendran los elementos.."
            break
            ;;
        *) echo "Opcion invalida";;
    esac
done

printf "$(tput setaf 202) \n\n Desisntalacion completa\n"
read -r -s -p " Presiona enter para continuar..."
printf "\n\n"
tput setaf 7
 

