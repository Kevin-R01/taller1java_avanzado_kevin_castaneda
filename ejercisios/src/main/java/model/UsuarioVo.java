package model;

public class UsuarioVo {
    private int id;
    private String nombre;
    private String correo;
    private String contrasena;
    private String fecha_creacion;

    public UsuarioVo(String nombre, String correo, String contrasena, String fecha_creacion) {
        this.nombre = nombre;
        this.correo = correo;
        this.contrasena = contrasena;
        this.fecha_creacion = fecha_creacion;
    }

    public UsuarioVo(int id, String nombre, String correo, String contrasena, String fecha_creacion) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.contrasena = contrasena;
        this.fecha_creacion = fecha_creacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

}
