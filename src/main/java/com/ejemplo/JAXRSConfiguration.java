package com.ejemplo;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

/**
 * Configura un endpoint REST usando JAX-RS. 
 * Elimine esta clase si no se exponen servicios JAX-RS en la aplicación
 */
@ApplicationPath("api")
public class JAXRSConfiguration extends Application {

}
