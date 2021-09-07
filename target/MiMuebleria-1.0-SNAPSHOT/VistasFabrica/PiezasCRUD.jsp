

<%@page import="config.Conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%!
    //* necesitamos un result para guardar nuestra consulta pero debe ser una variable global*//
    ResultSet result;
%>

<%
Conexion.conexion();
//Haremos la consulta aqui, dentro de las comillas habria pedimos la consulta a mysql
    PreparedStatement consulta = (PreparedStatement) Conexion.getConexion().prepareStatement("SELECT *FROM PIEZA;");
    result = consulta.executeQuery();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../cssbootstrop/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Piezas</title>        
        
    </head>

    <body>
        <div class="container">
            <table class="table table-bordered">
                <h1>LISTA DE REGISTRO DE PIEZAS</h1>
                <hr>
                <a class="btn btn-success btn-lg" href="Agregar.jsp">Nuevo Registro Pieza</a> 
                <br>
                <br>
                <a class="btn btn-danger btn-lg" href="Fab.jsp">Regresar</a>  
                <br>
                <br>
                <thead class="table-bordered"
                       <<h2>Materia Prima</h2>
                    <tr>
                <th class="texta -center">ID</th>
                <th class="text-center">PIEZA</th>
                <th class="text-center">COSTO</th>
                <th class="text-center">ACCIONES</th>
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
                        <td><li>
                    <a href="Editar.jsp?id=<%=result.getString(1)%>&nombre=<%=result.getString(2)%>&costo=<%=result.getString(3)%>" class="btn btn-danger">Editar</a>
                    <a href="../EliminarPieza?id=<%=result.getString(1)%>" class="btn btn-default">Eliminar</a>
                </li> </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>

    </body>
</html>
