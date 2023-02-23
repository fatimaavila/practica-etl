# practica-etl

## Paso 1
Crear el repositorio para la practica

## Paso 2
Crear un Dockerfile, que toma de base la imagen de Postgres para inicializar todo el proceso. 

```
FROM postgres:latest

ENV POSTGRES_USER=fa
ENV POSTGRES_PASSWORD=1234
ENV POSTGRES_DB=spotify

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

```

* ENV= variables de ambiente para determinar user, password, y el nombre de la base de datos.
* COPY = al inicializar el docker, corre el archivo init.sql que realiza las tablas.
* EXPOSE = el puerto en el que correrá.
