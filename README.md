## Requisitos:

* [Docker](https://docs.docker.com/install/)
* [Docker compose](https://docs.docker.com/compose/install/)

## Preparación:

    Agregar al usuario del host al grupo docker
        - Comando: sudo gpasswd -a $USER docker
    Dar permisos de ejecución al archivo start.sh y clean.sh *si lo necesita*

## Contenido

imagenes

* [postgres:9.5](https://www.postgresql.org/docs/9.5/static/release-9-5.html)
* [golang:1.8](https://blog.golang.org/go1.8)

El contenedor tiene

* [campuscliente](https://github.com/udistrital/campus_cliente)
* [documentoscrud](https://github.com/udistrital/documentos_crud)
* [entecrud](https://github.com/udistrital/ente_crud)
* [personascrud](https://github.com/udistrital/personas_crud)
* [ubicacionescrud](https://github.com/udistrital/ubicaciones_crud)
* [campusmid](https://github.com/udistrital/campus_mid)
* [utilsoas](https://github.com/udistrital/utils_oas)

## Configuracion:

Por defecto apache corre en el puerto 80 y postgres en el 5432, esto puede cambiarse en el archivo docker-compose.yml

La base de datos se crea a partir de un backup en la carpeta bkup, este debe llamarse bkup.backup

El archivo code.conf es donde se ponen repos y ramas para el clonado del workspace del contenedor. Por otra parte en este archivo tambien se puede definir los nombres de usuario, base de datos y password de la base de datos que el contenedor monta

Las variables de etorno de los apis se pueden generar en un archivo .env_secret.env en la raiz del repositorio

Si se desea apuntar a alguno de los servicios del contenedor desde los apis no se debe colocar direccion localhost o 127.0.0.1, encambio se debe poner el respectivo contenedor. 

## Posibles Problemas y Soluciones :

En caso de que las imagenes generen errores de espacio en memoria (ENOESPC, No space left) se recomienda que al correr el contenedor se cierren los editores de texto abiertos.


## Ejecutar EL contenedor:

-Si se ejecuta por primera vez o si se desea limpiar la base de datos se debe ejecutar el archivo clean.sh
-Si se desea ejecutar el contenedor ya habiendo creado la base de datos se debe ejecutar elarchivo start.sh 


## Gestión de Docker

se recomienda usar
* [DockStation](https://dockstation.io/)
