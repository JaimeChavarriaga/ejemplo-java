package com.ejemplo.ping;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 * Ejemplo de recurso REST.
 */
@Path("ping")
public class PingResource {

    String message = "pong";    

    @GET
    public String ping() {
        return this.message;
    }

}
