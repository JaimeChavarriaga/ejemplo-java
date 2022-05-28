FROM airhacks/glassfish
COPY ./target/java-docker.war ${DEPLOYMENT_DIR}
