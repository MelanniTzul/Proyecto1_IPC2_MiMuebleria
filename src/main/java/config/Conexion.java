package config;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 * Realizamos la conexion a la base de datos
 */
public class Conexion {

    private static final String USER = "UsuarioMuebleria";
    private static final String PASSWORD = "muebleria123";
    private static final String URL_MYSQL = "jdbc:mysql://localhost:3306/mi_muebleria";
    private static Connection conexion;

    public static Connection conexion() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(URL_MYSQL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            out.println(e.getMessage() + "");
            JOptionPane.showMessageDialog(null, e);
        }
        return connection;
    }

    //Set de la variable conexion
    public static Connection getConexion() {
        return conexion;
    }

   
    
    
}
