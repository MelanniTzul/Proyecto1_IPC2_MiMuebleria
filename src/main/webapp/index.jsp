<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <form method="POST" class="form1" action="login">
                <img src="imagenes/usuario.jpeg" alt=""/>
                <input type ="text" name="usuario" placeholder="Username"><!-- -->
                <hr>
                <img src="imagenes/usuario.jpeg" alt=""/>
                <input type ="password" name="pass" placeholder="Password">
                <hr>
                <input  type="submit" value="Ingresar"/>
            </form>

        </div>
        <footer class="pie">Derechos Reservados  Melanni Tzul 2021 </footer>
    </body>
</html>
