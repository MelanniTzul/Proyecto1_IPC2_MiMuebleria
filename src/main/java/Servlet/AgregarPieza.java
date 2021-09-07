
package Servlet;

import ObjetosMuebleria.pieza;
import config.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Melanni Tzul
 */
@WebServlet(name = "AgregarPieza", urlPatterns = {"/AgregarPieza"})
public class AgregarPieza extends HttpServlet {

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
            String id=request.getParameter("txtDNI");
            String costo=request.getParameter("txNom");
            String tipo=request.getParameter("txAcciones");
            
            pieza pieza2=new pieza(Integer.valueOf(id),tipo,Double.valueOf(costo));
            
            try {
            Conexion.conexion();
                PreparedStatement insert=(PreparedStatement)Conexion.getConexion().prepareStatement("INSERT INTO PIEZA(Codigo_Pieza,Tipo,Costo) VALUES(?,?,?)");
                insert.setString(1,String.valueOf(pieza2.getCodigo_Pieza()));
                insert.setString(2, pieza2.getTipo());
                insert.setDouble(3,pieza2.getCosto());
                insert.execute();
                response.sendRedirect("VistasFabrica/PiezasCRUD.jsp");
        } catch (Exception e) {
        }
        
        
        
        
        
        
        
    }

}
