<h1 style="color:Orange">Instalador de Docker y Docker Compose💻🐋 </h1>

## Introducción 🧐

### [🔗](https://nuvalab.com/comandos-principales-en-docker/#:~:text=0-,%C2%BFQu%C3%A9%20es%20Docker%3F,-Imagina%20que%20quieres)¿Qué es Docker?

**Docker** es una aplicación que simplifica el proceso de gestión de procesos de aplicación en contenedores. Los **contenedores** le permiten ejecutar sus aplicaciones en procesos aislados de recursos. Son similares a las máquinas virtuales, pero los contenedores son más portátiles, más amigables con los recursos y más dependientes del sistema operativo host.

### [🔗](https://imaginaformacion.com/tutoriales/que-es-docker-compose#:~:text=2024%2D03%2D14-,%C2%BFQu%C3%A9%20es%20Docker%20Compose%3F,-Docker%20Compose%20es)¿Qué es Docker Compose?

**Docker Compose** es una herramienta que te permite ejecutar entornos de aplicaciones de varios contenedores basados en definiciones establecidas en un archivo **YAML**. Utiliza definiciones de servicio para crear entornos totalmente personalizables con varios contenedores que pueden compartir redes y volúmenes de datos.

## Instalación de Docker y Docker Compose 👨‍💻

Para la instalación se ejecutara un Bash Script el cual contendrá los comandos que se ejecutaran para una instalación correcta de Docker y Docker Compose en un servidor **Ubuntu 20.04.**

**Prerrequisitos**📝:

- Un servidor Ubuntu 20.04

> [!NOTE]
> Para asegurarnos de obtener la última versión de Docker, instalaremos desde el repositorio oficial de Docker. Para ello, agregaremos un nuevo origen de paquete, agregaremos la clave GPG de Docker para asegurarnos de que las descargas son válidas.

### Pasos para la instalación 👣

1. Abrir el servidor de Ubuntu y colocarse en la carpeta donde se clonara este repositorio.
   ![Cli Ubuntu](img/image.png)
2. Clonar este repositorio.
   ![Clonar Repositorio](img/image-1.png)
3. Abrir el repositorio y buscar el archivo **_Docker_Docker-Compose_Installer.sh_**
   ![Contenido del Repositorio]()
4. Ejecutar el instalador con el siguiente comando.
   ```bash
    bash Docker_Docker-Compose_Installer.sh
   ```
5. Verifica la instalación correcta con el siguiente comando.
   ```bash
   sudo systemctl status docker
   ```
