# Ejemplo de aplicación Glassfish corriendo con Docker

Este proyecto es un ejemplo de una aplicación Java que se puede ejecutar usando Docker.
  - El proyecto Maven (pom.xml) genera un archivo .war
  - El archivo Dockerfile genera una imagen Docker con el archivo .war
  - El programa se puede ejecutar corriendo un contenedor con esta imágen
  

## Compilar

El proyecto Maven es un proyecto web típico, que genera un archivo ``.war`` como resultado del proceso de compilación. Para generar este archivo, es posible ejecutar Maven con los comandos ``clean`` y ``package``.

```  
mvn clean package
```

## Generar la imagen Docker

El proyecto incluye un archivo ``Dockerfile`` basado en un servidor Glassfish. Usando este archivo, se puede generar una imagen que permite ejecutar la aplicación usando ese servidor de aplicaciones. Para generar la imagen, es posible ejecutar ``docker build``.

```
docker build -t tendencias.ejemplos/java-docker .
```

## Ejecutar la aplicación

Para ejecutar la aplicación, si ya se tiene un contenedor con el nombre ``java-docker`` en ejecución, se detiene y elimina ese contenedor, y se ejecuta uno nuevo.

```  
docker rm -f java-docker || true && \
  docker run -d -p 8080:8080 -p 4848:4848 --name java-docker tendencias.ejemplos/java-docker 
```

El contenedor expone los puertos ``8080`` y ``4848``. La aplicación web se puede ver usando direcciones locales:
  - La página web puede verse en [http://localhost:8080/java-docker/index.html](http://localhost:8080/java-docker/index.html)
  - Un servicio REST puede verse en [http://localhost:8080/java-docker/api/ping](http://localhost:8080/java-docker/api/ping)
  
  
## Ejecutando la aplicación luego de cada modificación

El proyecto incluye un archivo ``buildAndRun.sh`` que facilita el proceso de desarrollo. Cada vez que se modifique el programa, se puede compilar y volver a ejecutar usando ese programa.

```  
# luego de cada modificación, se compila y se ejecuta la aplicación
./buildAndRun.sh
```

