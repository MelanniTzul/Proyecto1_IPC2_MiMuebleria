
<%@page import="java.sql.PreparedStatement"%>
<%@page import="config.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    //* necesitamos un result para guardar nuestra consulta pero debe ser una variable global*//
    ResultSet result;
%>

<%
    //Haremos la consulta aqui, dentro de las comillas habria pedimos la consulta a mysql
    PreparedStatement consulta = (PreparedStatement) Conexion.conexion().prepareStatement("SELECT *FROM PIEZA;");
    result = consulta.executeQuery();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../cssbootstrop/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <table class="table table-bordered">
                <h1>MUEBLES CREADOS</h1>
                <hr>

                <br>
                <br>
                <a class="btn btn-danger" href="Fab.jsp">Regresar</a>  
                <br>
                <br>              
                <thead class="table-bordered"

                <tr>
                <th class="texta -center">ID</th>
                <th class="text-center">PIEZA</th>
                <th class="text-center">COSTO</th>
                <th class="text-center">AGOTADA/AGOTARSE</th>
                </tr>
                </thead><!--es el encabeza de la tabla, los titulos
                                vtbody  -->
                <tbody><!<!-- es el cuerpo de la tabla es decir todos los datos que vienen -->

                    <%
                        while (result.next()) {
                    %>
                    <tr>
                        <td><%=result.getString(1)%></td>    <!<!-- Datos de cada columna -->
                        <td><%=result.getString(2)%></td>
                        <td><%=result.getString(3)%></td>                         
                    </tr>
                    <%
                        }
                    %>
    </body>
</html>
