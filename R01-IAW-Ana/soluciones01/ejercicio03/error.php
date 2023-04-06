<?php
include "constantes.php";
if(!isset($_GET["error"])){
    header("Location:index.php");
}
else if($_GET["error"]==0 || $_GET["error"]>count(TEXTO_ERROR)) {
    header("Location:index.php");
}

?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Errores</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
    <style>
        .error{
            background-color: #efa2a9;
            font-weight: bold;
        }
    </style>
</head>
<body>
<main>
    <h1>Error en los datos</h1>
    <p class="error">
    <?php
       echo  TEXTO_ERROR[$_GET["error"]];
    ?>
    </p>
    <p><a href="index.php">Volver al formulario</a></p>
</main>
</body>
</html>