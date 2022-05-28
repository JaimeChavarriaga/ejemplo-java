#!/usr/bin/bash

# Compila y crea la imagen para Docker
mvn clean package && \
    docker.exe build -t tendencias.ejemplos/java-docker .

# Ejecuta el contenedor con el nombre java-docker
# expone los puertos 8080 y 4848
docker.exe stop java-docker || true && \
    docker.exe rm -f java-docker || true && \
    docker.exe run -d -p 8080:8080 -p 4848:4848 --name java-docker tendencias.ejemplos/java-docker 
