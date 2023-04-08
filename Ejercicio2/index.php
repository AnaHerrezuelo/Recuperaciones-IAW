<?php

    $lista ="";

    if (isset($_COOKIE["lista"])){
        $lista = json_decode($_COOKIE["lista"], true);
    }

?>

<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lista de tareas</title>
    <!-- <link rel="stylesheet" href="https://unpkg.com/@picocss/pico@1.*/css/pico.min.css"> -->
    <style>
        button{
            background-color: indianred;
        }
    </style>
</head>
<body>
    <h2> Lista de Tareas </h2>
    <form method="get" action="tareas.php">
        <input type="text" name="texto" id="texto"> <button type="submit"> + </button>
    </form>

    <?php
    if ($lista){
        foreach ($lista as $i=>$lista){
            echo "<p> $i - $lista <form action='quitar.php'> <button type='submit'> Quitar </button> </form> </p>";
        }
    }else{
        echo "<p> Lista vacía </p>";
    }
    ?>

</body>
</html>