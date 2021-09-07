
package Servlet;

import config.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

 
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            PrintWriter out = response.getWriter();
            String usuario = request.getParameter("usuario");
            String Pass = request.getParameter("pass");
            

            PreparedStatement consulta = (PreparedStatement) Conexion.getConexion().prepareStatement("select * FROM USUARIO WHERE Nombre_De_Usuario='" + usuario +  "' AND Password='" + Pass+"'");        
            ResultSet result =consulta.executeQuery();//Ejecutando la consulta y guardando la informacion           
            boolean a=result.next();    
            if (a&&result.getInt(3)==1) {
                response.sendRedirect("VistasFabrica/Fab.jsp");//Redireccionelo a fabrica
            } else if (a&&result.getString(3).equals("2") && result.getString(4).equals("1")) {
                response.sendRedirect("VistasPuntosVenta/PuntoDeVentas.jsp");
            } else if (a&&result.getString(3).equals("3") && result.getString(4).equals("1")) {
                response.sendRedirect("VistasAreaFinancieraAdmin/FinancieraAdmin.jsp");
            } else {
                response.sendRedirect("index.jsp");
                //Mandar a una pagina de erro que no cumple con los condiciones
                
                JOptionPane.showMessageDialog(null,"error usuario");
            }
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"error consulta");
        }

    }

  

}
