<?php
    include_once "conexion.php";
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Acceso Usuarios </title>
    <style>
    form input{
        width: 500px;
    }

    </style>
</head>
<body>
    <h1> Acceso a Usuarios </h1>

    <form action="verificar.php">
        <input type="text" name="usuario" id="usuario" placeholder="Escriba su nombre de usuario"><br>

        <input type="password" name="contra" id="contra" placeholder="Escriba su contraseña"> <br>

         <button type="submit"> Enviar </button>


    </form>


</body>
</html>