

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../cssbootstrop/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>EnsamblePiezas</title>
    </head>
    <body>
         <div class="container">
            <h1>Ensamblar piezas</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width:500px; height:400px">
                ID:
                <input type="text" name="txtDNI" class="form-control"/>
                PIEZA
                <input type="text" name="txNom" class="form-control"/>
                COSTO              
                <input type="text" name="txAcciones" class="form-control"/>
                 <br>
                <input  type="submit" value="Guardar" class="btn btn-success btn-lg"/>                        
                <a class="btn btn-danger btn-lg" href="PiezasCRUD.jsp">Regresar</a>             
            </form> 
             <h1>Ensamblar Mueble</h1>
             <hr>
            <form action="" method="post" class="form-control" style="width:500px; height:400px">
                ID:
                <input type="text" name="txtDNI" class="form-control"/>
                PIEZA
                <input type="text" name="txNom" class="form-control"/>
                COSTO              
                <input type="text" name="txAcciones" class="form-control"/>
                 <br>
                <input  type="submit" value="Guardar" class="btn btn-success btn-lg"/>                        
                <a class="btn btn-danger btn-lg" href="PiezasCRUD.jsp">Regresar</a>             
            </form>  
    </body>
</html>
