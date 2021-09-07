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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Melanni Tzul
 */
@WebServlet(name = "EliminarPieza", urlPatterns = {"/EliminarPieza"})
public class EliminarPieza extends HttpServlet {



    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("id"); //recibimos el  id de la pieza que deseamos eliminar
        
        try {
            PreparedStatement delete=(PreparedStatement)Conexion.getConexion().prepareStatement("DELETE FROM PIEZA WHERE Codigo_Pieza='"+id+"';");
            delete.execute();
            response.sendRedirect("VistasFabrica/PiezasCRUD.jsp");
        } catch (Exception e) {
        }
    }

}
