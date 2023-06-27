package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDao {
    private Connection cone;

    public UsuarioDao(Connection cone) {
        this.cone = cone;
    }

    public void registrar(UsuarioVo usuario) throws SQLException {
        String sql = "INSERT INTO usuarios (nombre, correo, contrasena, fecha_creacion) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = cone.prepareStatement(sql)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getCorreo());
            statement.setString(3, usuario.getContrasena());
            statement.setString(4, usuario.getFecha_creacion());
            statement.executeUpdate();
        }
    }

    public UsuarioVo consultar(String correo) throws SQLException {
        String sql = "SELECT * FROM usuarios WHERE correo = ?";
        try (PreparedStatement statement = cone.prepareStatement(sql)) {
            statement.setString(1, correo);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    String nombre = resultSet.getString("nombre");
                    String contrasena = resultSet.getString("contrasena");
                    String fechaCreacion = resultSet.getString("fecha_creacion");

                    return new UsuarioVo(nombre, correo, contrasena, fechaCreacion);
                } else {
                    // No se encontró ningún usuario con el correo especificado
                    return null;
                }
            }
        }
    }

    public UsuarioVo ingresar(String correo, String contrasena) throws SQLException {
        String sql = "SELECT * FROM usuarios WHERE correo = ? AND contrasena = ?";
        try (PreparedStatement statement = cone.prepareStatement(sql)) {
            statement.setString(1, correo);
            statement.setString(2, contrasena);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    String nombre = resultSet.getString("nombre");
                    String fechaCreacion = resultSet.getString("fecha_creacion");

                    return new UsuarioVo(nombre, correo, contrasena, fechaCreacion);
                }
            }
        }
        return null;
    }

    public void actualizar(UsuarioVo usuario) throws SQLException {
        String sql = "UPDATE usuarios SET nombre = ?, contrasena = ?, fecha_creacion = ? WHERE correo = ?";
        try (PreparedStatement statement = cone.prepareStatement(sql)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getContrasena());
            statement.setString(3, usuario.getFecha_creacion());
            statement.setString(4, usuario.getCorreo());
            statement.executeUpdate();
        }
    }

    public void eliminar(String correo) throws SQLException {
        String sql = "DELETE FROM usuarios WHERE correo = ?";
        try (PreparedStatement statement = cone.prepareStatement(sql)) {
            statement.setString(1, correo);
            statement.executeUpdate();
        }
    }
}
   
