
<%@page import="java.sql.PreparedStatement"%>
<%@page import="config.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../cssbootstrop/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Agregar Pieza</h1>
            <hr>
            <form action="../AgregarPieza" method="post" class="form-control" style="width:500px; height:400px">
                ID:
                <input type="text" required="" name="txtDNI" class="form-control"/>
                PIEZA
                <input type="text" required="" name="txNom" class="form-control"/>
                COSTO              
                <input type="text"  required=" "name="txAcciones" class="form-control"/>
                 <br>
                <input  type="submit" value="Guardar" class="btn btn-success btn-lg"/>                        
                <a class="btn btn-danger btn-lg" href="PiezasCRUD.jsp">Regresar</a>             
            </form>
        </div>
       
    </body>
</html>



