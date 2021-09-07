

<%@page import="ObjetosMuebleria.pieza"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    //Variables para recibir los datos para editar, datos que vienen de piezasCRUD.jsp
   String id;
   String costo;
   String pieza;
   pieza pieza1;
    %>
  <%
      //Recibimos la peticion
    id=request.getParameter("id");
    costo=request.getParameter("costo");
        pieza=request.getParameter("nombre");
        //Ingresamos los datos enviados
      pieza1=new pieza(Integer.valueOf(id),pieza,Double.valueOf(costo));
  %>  
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../cssbootstrop/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Editar</title>
    </head>
    <body>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="../EditarPieza" method="post" class="form-control"  style="width:500px; height:400px">
                ID:
                <input type="text" readonly="" value="<%=pieza1.getCodigo_Pieza()%>" name="txtDNI" class="form-control"/>
                PIEZA
                <input type="text" required="" name="txNom" value="<%=pieza1.getTipo()%>" class="form-control"/>
                COSTO              
                <input type="text" required="" name="txtCosto" value="<%=pieza1.getCosto()%>" class="form-control"/>
                 <br>
                <input  type="submit" value="Guardar" class="btn btn-success btn-lg"/>                        
                <a class="btn btn-danger btn-lg" href="PiezasCRUD.jsp">Regresar</a>             
            </form>
            
        </div>
    </body>
</html>
