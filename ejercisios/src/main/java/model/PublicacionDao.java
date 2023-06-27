package model;

import java.util.ArrayList;
import java.util.List;

public class PublicacionDao {
    private List<PublicacionVo> publicaciones;

    public PublicacionDao() {
        this.publicaciones = new ArrayList<>();
    }

    public void guardarPublicacion(PublicacionVo publicacion) {
        // Lógica para guardar la publicación en la base de datos (ejemplo ficticio)
        publicaciones.add(publicacion);
    }

    public List<PublicacionVo> obtenerPublicacionesPorUsuario(String usuarioID) {
        // Lógica para obtener las publicaciones de un usuario de la base de datos (ejemplo ficticio)
        List<PublicacionVo> publicacionesUsuario = new ArrayList<>();
        for (PublicacionVo publicacion : publicaciones) {
            if (publicacion.getUsuarioID().equals(usuarioID)) {
                publicacionesUsuario.add(publicacion);
            }
        }
        return publicacionesUsuario;
    }

    // Otros métodos relacionados con la manipulación de las publicaciones en la base de datos
}
