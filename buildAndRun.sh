#!/bin/sh

# Compila y crea la imagen para Docker
mvn clean package && \
    docker build -t tendencias.ejemplos/java-docker .

# Ejecuta el contenedor con el nombre java-docker
# expone los puertos 8080 y 4848
docker rm -f java-docker || true && \
    docker run -d -p 8080:8080 -p 4848:4848 --name java-docker tendencias.ejemplos/java-docker 
