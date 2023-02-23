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


## Paso 2.5

```
docker build -t faavila-postgres .
```
## Paso 3

Se creó la imagen de Docker faavila-postgres y se corre de la siguiente manera:

```
docker run -p 5432:5432 --name fatimaavila-container -d faavila-postgres
```

## Paso 4 

Se  comprueba que el ambiente esté bien controlado y que funcione para hacer una conexión.

<img width="823" alt="image" src="https://user-images.githubusercontent.com/69205813/220819793-73bc50aa-a3e4-4436-b876-4cb842a99a4f.png">

<img width="427" alt="image" src="https://user-images.githubusercontent.com/69205813/220820009-ed2c987d-c348-4314-8951-39ea6a06c888.png">


