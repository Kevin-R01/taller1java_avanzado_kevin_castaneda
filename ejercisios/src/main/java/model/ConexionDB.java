package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String BD = "jdbc:mysql://127.0.0.1:3306/RedesSociales";
    private static final String user = "root";
    private static final String password = "";

    public static Connection conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(BD, user, password);
            System.out.println("Conexion exitosa");
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error en la conexión a la base de datos: " + e.getMessage());
            return null;
        }
    }
}
