<%@page import="config.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!<!-- Inicializar la conexion, para poder acceder en todo  -->
<%
  Conexion.conexion();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Muebleria.</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>

    <h1>MI MUEBLERIA.</h1>
    <img class="logo" src="imagenes/mueble_1.PNG" alt=""/>
    <body>
        <div class="contenedor1"> 
            <h1>Iniciar Sesión </h1>
            <form action="login" method="POST" class="form1" ><!<!-- Llamo a mi servlet donde hice la peticion a mi base de datos y especificar el metodo a usar -->
                <img src="imagenes/usuario.jpeg" alt=""/>
                <input type ="text" name="usuario" placeholder="Nombre"><!-- -->
                <hr>
                <img src="imagenes/usuario.jpeg" alt=""/>
                <input type ="password" name="pass" placeholder="Contraseña">
                <hr>
                <input  type="submit" value="Ingresar"/>
            </form>

        </div>
        <footer class="pie">Derechos Reservados  Melanni Tzul 2021 </footer>
    </body>
</html>
