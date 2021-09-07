
<%@page import="config.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  Conexion.conexion();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../cssbootstrop/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Fabrica</title>  
    </head>
    <body>
        <header>
            <div class="text-center">
                <h1>ÁREA DE FÁBRICA</h1>   
                <table class="table table-bordered">
                    <nav  class="menu" style="display: inline-block">
                        <ul class="" style="list-style: none; display: inline-block">
                            <li>
                                <a class="btn btn-success btn-lg" href="PiezasCRUD.jsp">Piezas</a>  
                            </li>
                            <br>

                            <li>
                                <a class="btn btn-success btn-lg" href="EnsamblePiezas.jsp"> Ensamblar Piezas</a>

                            </li>

                            <br>

                            <li>
                                <a class="btn btn-success btn-lg" href="EnsamblarMueble.jsp">Ensamblar Mueble</a>  
                            </li>                 
                            <br>
                            <li>
                                <a class="btn btn-success btn-lg" href="ConMueblesCreados.jsp">Consulta de piezas/Ordenacion de datos</a>  
                            </li>                 
                            <br>
                            <li>
                                <a class="btn btn-success btn-lg" href="ConMueblesCreados.jsp">Consultar muebles creados</a> 
                            </li>
                            <br>      
                            <li>
                                <a class="btn btn-success btn-lg" href="AgotarseAgotadas.jsp">Piezas a agotarse/agotadas</a> 
                            </li>                  

                        </ul>
                    </nav>

                </table>
                <img src="../imagenes/Fabricacion.jpg" alt=""/>
            </div>
        </header>

    </body>
</html>
