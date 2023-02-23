FROM postgres:latest

ENV POSTGRES_USER=fa
ENV POSTGRES_PASSWORD=1234
ENV POSTGRES_DB=spotify

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432