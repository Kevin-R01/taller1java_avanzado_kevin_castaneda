package model;

public class PublicacionVo {
     private String UsuarioID;
    private String Contenido;
    private String FechaPublicacion;


    
    public String getUsuarioID() {
        return UsuarioID;
    }
    public void setUsuarioID(String usuarioID) {
        UsuarioID = usuarioID;
    }
    public String getContenido() {
        return Contenido;
    }
    public void setContenido(String contenido) {
        Contenido = contenido;
    }
    public String getFechaPublicacion() {
        return FechaPublicacion;
    }
    public void setFechaPublicacion(String fechaPublicacion) {
        FechaPublicacion = fechaPublicacion;
    }
    public PublicacionVo(String usuarioID, String contenido, String fechaPublicacion) {
        UsuarioID = usuarioID;
        Contenido = contenido;
        FechaPublicacion = fechaPublicacion;
    }
    public PublicacionVo() {
    }




}
