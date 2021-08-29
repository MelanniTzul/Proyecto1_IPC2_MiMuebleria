<%-- 
    Document   : index
    Created on : 28/08/2021, 23:04:49
    Author     : Melanni Tzul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <h1>MI MUEBLERIA.</h1>
    <img class="logo" src="imagenes/mueble_1.PNG" alt=""/>
    <body>
       <div class="contenedor1"> 
            <h1>Sing in </h1>
            <form class="form1">
                <img src="imagenes/usuario.jpeg" alt=""/>
                <input type ="text" name="" placeholder="Username"><!-- -->
                <hr>
                <img src="imagenes/usuario.jpeg" alt=""/>
                <input type ="password" name="" placeholder="Password">
                <hr>
                <input  type="submit" value="Sing in"/>
            </form>

        </div>


        <div class="contenedor2"> 
            <form class="form2">
                <input type="submit" value="create Account"/>            
            </form>
            <div class="referencias">
                <a>Melanni</a>
                <a href="">Term of Use </a>
                <a href="">Privacy Policy</a>
                
                
            </div>


        </div>
        <footer class="pie">Derechos Reservados  Melanni Tzul 2021 </footer>
    </body>
</html>
