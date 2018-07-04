#!/bin/bash
source code.conf
echo "Deteniendo los contenedores si estan en ejecucion..."
SCHEMASPY_SCHEMA=$SCHEMASPY_SCHEMA DB_BUILD_USER=$DB_BUILD_USER DB_BUILD_NAME=$DB_BUILD_NAME DB_BUILD_PASS=$DB_BUILD_PASS CLIENT_PORT=$CLIENT_PORT PROXY=$http_proxy USER_ID=$UID CLIENT_CLONE_INFO=$CLIENT_CLONE_INFO ORGANIZACION_CRUD_GET_INFO=$ORGANIZACION_CRUD_GET_INFO ORGANIZACION_CRUD_BRANCH_TARGET=$ORGANIZACION_CRUD_BRANCH_TARGET ORGANIZACION_CRUD_PORT=$ORGANIZACION_CRUD_PORT FORMACION_ACADEMICA_CRUD_GET_INFO=$FORMACION_ACADEMICA_CRUD_GET_INFO FORMACION_ACADEMICA_CRUD_BRANCH_TARGET=$FORMACION_ACADEMICA_CRUD_BRANCH_TARGET FORMACION_ACADEMICA_CRUD_PORT=$FORMACION_ACADEMICA_CRUD_PORT EXPERIENCIA_LABORAL_CRUD_GET_INFO=$EXPERIENCIA_LABORAL_CRUD_GET_INFO EXPERIENCIA_LABORAL_CRUD_BRANCH_TARGET=$EXPERIENCIA_LABORAL_CRUD_BRANCH_TARGET EXPERIENCIA_LABORAL_CRUD_PORT=$EXPERIENCIA_LABORAL_CRUD_PORT CORE_CRUD_GET_INFO=$CORE_CRUD_GET_INFO CORE_CRUD_BRANCH_TARGET=$CORE_CRUD_BRANCH_TARGET CORE_CRUD_PORT=$CORE_CRUD_PORT PROGRAMA_ACADEMICO_CRUD_GET_INFO=$PROGRAMA_ACADEMICO_CRUD_GET_INFO PROGRAMA_ACADEMICO_CRUD_BRANCH_TARGET=$PROGRAMA_ACADEMICO_CRUD_BRANCH_TARGET PROGRAMA_ACADEMICO_CRUD_PORT=$PROGRAMA_ACADEMICO_CRUD_PORT DOCUMENTOS_CRUD_GET_INFO=$DOCUMENTOS_CRUD_GET_INFO DOCUMENTOS_CRUD_BRANCH_TARGET=$DOCUMENTOS_CRUD_BRANCH_TARGET DOCUMENTOS_CRUD_PORT=$DOCUMENTOS_CRUD_PORT PERSONAS_CRUD_GET_INFO=$PERSONAS_CRUD_GET_INFO PERSONAS_CRUD_BRANCH_TARGET=$PERSONAS_CRUD_BRANCH_TARGET PERSONAS_CRUD_PORT=$PERSONAS_CRUD_PORT UBICACIONES_CRUD_GET_INFO=$UBICACIONES_CRUD_GET_INFO UBICACIONES_CRUD_BRANCH_TARGET=$UBICACIONES_CRUD_BRANCH_TARGET UBICACIONES_CRUD_PORT=$UBICACIONES_CRUD_PORT CAMPUS_MID_GET_INFO=$CAMPUS_MID_GET_INFO CAMPUS_MID_BRANCH_TARGET=$CAMPUS_MID_BRANCH_TARGET CAMPUS_MID_PORT=$CAMPUS_MID_PORT CLIENT_BRANCH_TARGET=$CLIENT_BRANCH_TARGET ENTE_CRUD_GET_INFO=$ENTE_CRUD_GET_INFO ENTE_CRUD_BRANCH_TARGET=$ENTE_CRUD_BRANCH_TARGET ENTE_HTTP_PORT=$ENTE_HTTP_PORT docker-compose down
echo "Entorno de Desarrollo Campus"
echo "Creacion de carpetas necesarias del contenedor..."
if [ -f workspace/ ]; then
    echo "Las Carpetas ya fueron creadas..."
else
    mkdir -p bkup
    mkdir -p workspace/{angular,go}
    mkdir -p workspace/go/src
    mkdir -p workspace/go/src/github.com
    mkdir -p workspace/go/src/github.com/udistrital
    echo "Carpetas creadas..."
fi
mkdir -p database
mkdir -p apache2/sites-enabled
echo "Construyendo Contendor..."
SCHEMASPY_SCHEMA=$SCHEMASPY_SCHEMA DB_BUILD_USER=$DB_BUILD_USER DB_BUILD_NAME=$DB_BUILD_NAME DB_BUILD_PASS=$DB_BUILD_PASS CLIENT_PORT=$CLIENT_PORT PROXY=$http_proxy USER_ID=$UID CLIENT_CLONE_INFO=$CLIENT_CLONE_INFO ORGANIZACION_CRUD_GET_INFO=$ORGANIZACION_CRUD_GET_INFO ORGANIZACION_CRUD_BRANCH_TARGET=$ORGANIZACION_CRUD_BRANCH_TARGET ORGANIZACION_CRUD_PORT=$ORGANIZACION_CRUD_PORT FORMACION_ACADEMICA_CRUD_GET_INFO=$FORMACION_ACADEMICA_CRUD_GET_INFO FORMACION_ACADEMICA_CRUD_BRANCH_TARGET=$FORMACION_ACADEMICA_CRUD_BRANCH_TARGET FORMACION_ACADEMICA_CRUD_PORT=$FORMACION_ACADEMICA_CRUD_PORT EXPERIENCIA_LABORAL_CRUD_GET_INFO=$EXPERIENCIA_LABORAL_CRUD_GET_INFO EXPERIENCIA_LABORAL_CRUD_BRANCH_TARGET=$EXPERIENCIA_LABORAL_CRUD_BRANCH_TARGET EXPERIENCIA_LABORAL_CRUD_PORT=$EXPERIENCIA_LABORAL_CRUD_PORT CORE_CRUD_GET_INFO=$CORE_CRUD_GET_INFO CORE_CRUD_BRANCH_TARGET=$CORE_CRUD_BRANCH_TARGET CORE_CRUD_PORT=$CORE_CRUD_PORT PROGRAMA_ACADEMICO_CRUD_GET_INFO=$PROGRAMA_ACADEMICO_CRUD_GET_INFO PROGRAMA_ACADEMICO_CRUD_BRANCH_TARGET=$PROGRAMA_ACADEMICO_CRUD_BRANCH_TARGET PROGRAMA_ACADEMICO_CRUD_PORT=$PROGRAMA_ACADEMICO_CRUD_PORT DOCUMENTOS_CRUD_GET_INFO=$DOCUMENTOS_CRUD_GET_INFO DOCUMENTOS_CRUD_BRANCH_TARGET=$DOCUMENTOS_CRUD_BRANCH_TARGET DOCUMENTOS_CRUD_PORT=$DOCUMENTOS_CRUD_PORT PERSONAS_CRUD_GET_INFO=$PERSONAS_CRUD_GET_INFO PERSONAS_CRUD_BRANCH_TARGET=$PERSONAS_CRUD_BRANCH_TARGET PERSONAS_CRUD_PORT=$PERSONAS_CRUD_PORT UBICACIONES_CRUD_GET_INFO=$UBICACIONES_CRUD_GET_INFO UBICACIONES_CRUD_BRANCH_TARGET=$UBICACIONES_CRUD_BRANCH_TARGET UBICACIONES_CRUD_PORT=$UBICACIONES_CRUD_PORT CAMPUS_MID_GET_INFO=$CAMPUS_MID_GET_INFO CAMPUS_MID_BRANCH_TARGET=$CAMPUS_MID_BRANCH_TARGET CAMPUS_MID_PORT=$CAMPUS_MID_PORT CLIENT_BRANCH_TARGET=$CLIENT_BRANCH_TARGET ENTE_CRUD_GET_INFO=$ENTE_CRUD_GET_INFO ENTE_CRUD_BRANCH_TARGET=$ENTE_CRUD_BRANCH_TARGET ENTE_HTTP_PORT=$ENTE_HTTP_PORT docker-compose build
echo "ejecutando contenedor..."
SCHEMASPY_SCHEMA=$SCHEMASPY_SCHEMA DB_BUILD_USER=$DB_BUILD_USER DB_BUILD_NAME=$DB_BUILD_NAME DB_BUILD_PASS=$DB_BUILD_PASS CLIENT_PORT=$CLIENT_PORT PROXY=$http_proxy USER_ID=$UID CLIENT_CLONE_INFO=$CLIENT_CLONE_INFO ORGANIZACION_CRUD_GET_INFO=$ORGANIZACION_CRUD_GET_INFO ORGANIZACION_CRUD_BRANCH_TARGET=$ORGANIZACION_CRUD_BRANCH_TARGET ORGANIZACION_CRUD_PORT=$ORGANIZACION_CRUD_PORT FORMACION_ACADEMICA_CRUD_GET_INFO=$FORMACION_ACADEMICA_CRUD_GET_INFO FORMACION_ACADEMICA_CRUD_BRANCH_TARGET=$FORMACION_ACADEMICA_CRUD_BRANCH_TARGET FORMACION_ACADEMICA_CRUD_PORT=$FORMACION_ACADEMICA_CRUD_PORT EXPERIENCIA_LABORAL_CRUD_GET_INFO=$EXPERIENCIA_LABORAL_CRUD_GET_INFO EXPERIENCIA_LABORAL_CRUD_BRANCH_TARGET=$EXPERIENCIA_LABORAL_CRUD_BRANCH_TARGET EXPERIENCIA_LABORAL_CRUD_PORT=$EXPERIENCIA_LABORAL_CRUD_PORT CORE_CRUD_GET_INFO=$CORE_CRUD_GET_INFO CORE_CRUD_BRANCH_TARGET=$CORE_CRUD_BRANCH_TARGET CORE_CRUD_PORT=$CORE_CRUD_PORT PROGRAMA_ACADEMICO_CRUD_GET_INFO=$PROGRAMA_ACADEMICO_CRUD_GET_INFO PROGRAMA_ACADEMICO_CRUD_BRANCH_TARGET=$PROGRAMA_ACADEMICO_CRUD_BRANCH_TARGET PROGRAMA_ACADEMICO_CRUD_PORT=$PROGRAMA_ACADEMICO_CRUD_PORT DOCUMENTOS_CRUD_GET_INFO=$DOCUMENTOS_CRUD_GET_INFO DOCUMENTOS_CRUD_BRANCH_TARGET=$DOCUMENTOS_CRUD_BRANCH_TARGET DOCUMENTOS_CRUD_PORT=$DOCUMENTOS_CRUD_PORT PERSONAS_CRUD_GET_INFO=$PERSONAS_CRUD_GET_INFO PERSONAS_CRUD_BRANCH_TARGET=$PERSONAS_CRUD_BRANCH_TARGET PERSONAS_CRUD_PORT=$PERSONAS_CRUD_PORT UBICACIONES_CRUD_GET_INFO=$UBICACIONES_CRUD_GET_INFO UBICACIONES_CRUD_BRANCH_TARGET=$UBICACIONES_CRUD_BRANCH_TARGET UBICACIONES_CRUD_PORT=$UBICACIONES_CRUD_PORT CAMPUS_MID_GET_INFO=$CAMPUS_MID_GET_INFO CAMPUS_MID_BRANCH_TARGET=$CAMPUS_MID_BRANCH_TARGET CAMPUS_MID_PORT=$CAMPUS_MID_PORT CLIENT_BRANCH_TARGET=$CLIENT_BRANCH_TARGET ENTE_CRUD_GET_INFO=$ENTE_CRUD_GET_INFO ENTE_CRUD_BRANCH_TARGET=$ENTE_CRUD_BRANCH_TARGET ENTE_HTTP_PORT=$ENTE_HTTP_PORT docker-compose up -d
#for f in sql/*.sql;do
#    CLIENT_PORT=$CLIENT_PORT CRUD_PORT=$CRUD_PORT MID_PORT=$MID_PORT PROXY=$http_proxy USER_ID=$UID CRUD_GET_INFO=$CRUD_GET_INFO MID_GET_INFO=$MID_GET_INFO CLIENT_CLONE_INFO=$CLIENT_CLONE_INFO CRUD_BRANCH_TARGET=$CRUD_BRANCH_TARGET MID_BRANCH_TARGET=$MID_BRANCH_TARGET CLIENT_BRANCH_TARGET=$CLIENT_BRANCH_TARGET docker-compose exec postgresdb psql -U crud_user -d udistrital_core_db -a -f $f
#done
#docker-compose run schemaspy sh -c 'java -jar schemaSpy.jar -t pgsql -o /output -dp postgresql-jre6.jar -host database -port 5432 -u crud_user -p password -db udistrital_core_db -s financiera'
echo "ejecutando contenedor..."
echo "El contenedor se esta ejecutando en segundo plano..."
echo "para ver el log de los servicios utilice DockStation:"
