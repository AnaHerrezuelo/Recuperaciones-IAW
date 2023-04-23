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
    <title> Lista </title>
    <style>
        form input{
            width: 500px;
        }

    </style>
</head>
<body>
    <h1> Lista de Tareas </h1>

    <form action="añadirtarea.php">

        <input type="text" name="lista" id="lista" placeholder="Escriba una nueva tarea"> <br>

        <button type="submit"> Enviar </button>

    </form>

    <?php

    $sqllista = "SELECT lista from lista;";
    $reslista = getConexion()->query($sqllista);
    $filalista = $reslista->fetch_assoc();
    while($filalista){
        echo " <li> {$filalista["lista"]} </li>";
        $filalista = $reslista->fetch_assoc();
    }


    ?>

</body>
</html>
