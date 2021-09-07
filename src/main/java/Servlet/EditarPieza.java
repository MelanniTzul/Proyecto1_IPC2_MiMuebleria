/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import config.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Melanni Tzul
 */
@WebServlet(name = "EditarPieza", urlPatterns = {"/EditarPieza"})
public class EditarPieza extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
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
            //Recibimos peticions(nuevos datos)
            String id=request.getParameter("txtDNI");
            String costo=request.getParameter("txtCosto");
            String nombre=request.getParameter("txNom");
            Conexion.conexion();
            PreparedStatement modificar=(PreparedStatement)Conexion.getConexion().prepareStatement("UPDATE PIEZA set Tipo='"+nombre+"',Costo='"+costo+"' WHERE Codigo_Pieza='"+id+"';");
            modificar.execute();
            response.sendRedirect("VistasFabrica/PiezasCRUD.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(EditarPieza.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

}
