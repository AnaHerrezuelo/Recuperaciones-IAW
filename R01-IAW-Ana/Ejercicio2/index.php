<?php
    $texto=" ";
    if (isset($_POST["texto"])){
        $texto = $_POST["texto"];

        echo "$texto";

        }

    $texto2 = " ";
    if (isset($_POST["texto2"])){
        $texto2 = $_POST["texto2"];

        $texto= $texto.$texto2;

    }

// Explicación de los bucles: https://www.youtube.com/watch?v=VjqJwSy_BPQ
?>


<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>

    <h1> Texto interminable </h1>
    <form method="post" action="index.php">
        <label for="texto"> Texto </label> <br>
        <textarea name="texto" id="texto" cols="30" rows="10"> </textarea> <br>
        <textarea name="texto2" id="texto2" cols="30" rows="10" > <?=$texto?> </textarea> <br>

        <button> Enviar </button>
    </form>

    <?= $texto ?>




</body>
</html>