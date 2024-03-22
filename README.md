# Instalador de Docker en Ubuntu💻🐋

<details>
  <summary><b>Contenido</b></summary>

- [Instalador de Docker en Ubuntu💻🐋](#instalador-de-docker-en-ubuntu)
  - [Introducción 🧐](#introducción-)
    - [🔗¿Qué es Docker?](#qué-es-docker)
    - [🔗¿Qué es Docker Compose?](#qué-es-docker-compose)
  - [Instalación de Docker y Docker Compose 👨‍💻](#instalación-de-docker-y-docker-compose-)
    - [Pasos para la instalación 👣](#pasos-para-la-instalación-)
  - [Explicación de los comandos del Script 🔎](#explicación-de-los-comandos-del-script-)

</details>

## Introducción 🧐

### [🔗](https://nuvalab.com/comandos-principales-en-docker/#:~:text=0-,%C2%BFQu%C3%A9%20es%20Docker%3F,-Imagina%20que%20quieres)¿Qué es Docker?

**Docker** es una aplicación que simplifica el proceso de gestión de procesos de aplicación en contenedores. Los **contenedores** le permiten ejecutar sus aplicaciones en procesos aislados de recursos. Son similares a las máquinas virtuales, pero los contenedores son más portátiles, más amigables con los recursos y más dependientes del sistema operativo host.

### [🔗](https://imaginaformacion.com/tutoriales/que-es-docker-compose#:~:text=2024%2D03%2D14-,%C2%BFQu%C3%A9%20es%20Docker%20Compose%3F,-Docker%20Compose%20es)¿Qué es Docker Compose?

**Docker Compose** es una herramienta que te permite ejecutar entornos de aplicaciones de varios contenedores basados en definiciones establecidas en un archivo **YAML**. Utiliza definiciones de servicio para crear entornos totalmente personalizables con varios contenedores que pueden compartir redes y volúmenes de datos.

</br>
Por lo tanto, Docker es una herramienta que nos ayudara a crear contenedores donde se alojaran nuestras aplicaciones y servicios ocupados. Ademas, Docker compose nos permitirá gestionar los contenedores que conforman nuestra aplicación, como la comunicación entre contenedores, almacenamiento, demanda, y otros. 
Otra gran ventaja es poder compartir nuestro proyecto con otras personas, sin preocuparnos en una ejecución fallida por sistemas operativos diferentes, dependencias, recurso, entre otros.

## Instalación de Docker y Docker Compose 👨‍💻

Para la instalación se ejecutara un Bash Script el cual contendrá los comandos que se ejecutaran para una instalación correcta de Docker en un servidor **Ubuntu 20.04.**

**Prerrequisitos**📝:

- Un servidor Ubuntu 20.04

> 📝 **Nota**: <br> Para asegurarnos de obtener la última versión de Docker, instalaremos desde el repositorio oficial de Docker. Para ello, agregaremos un nuevo origen de paquete, agregaremos la clave GPG de Docker para asegurarnos de que las descargas son válidas.

### Pasos para la instalación 👣

1. Abrir el servidor de Ubuntu y colocarse en la carpeta donde se clonara este repositorio.
   ![Cli Ubuntu](img/image.png)
2. Clonar este repositorio.
   ![Clonar Repositorio](img/image-1.png)
3. Abrir el repositorio y buscar el archivo **_Docker_Installer.sh_**
   ![Contenido del Repositorio]()
4. Ejecutar el instalador con el siguiente comando.
   ```bash
    bash Docker_Installer.sh
   ```
5. Se ejecutaran los comandos del script.
   ![Ejecucion del Script]()
6. Terminada la ejecución verifica la correcta instalación con el siguiente comando.
   ```bash
   sudo systemctl status docker
   ```
   Una instalación exitosa se vería así:
   ![Instalacion Exitosa]()

## Explicación de los comandos del Script 🔎

1. Iniciamos declarando el interprete shell bash, seguido de un mensaje que se desplegara al iniciar la instalación, seguido de una espera por entrada de teclado (enter).

   ```bash
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

      printf "$(tput setaf 202) \n\n Se iniciara la instalación de docker\n"
      read -r -s -p " Presiona enter para continuar..."
   ```

2. Acontinuacion se desinstalaran los paquetes en conflicto de posibles versiones de docker instaladas anteriormente.
   ```bash
   printf  "$(tput setaf 214) \n\n 2-->  Se desinstalaran paquetes de versiones anteriores de Docker \n para evitar posibles conflictos \n"
   for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
   ```
