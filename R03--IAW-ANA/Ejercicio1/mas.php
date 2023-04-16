<<<<<<< HEAD
<?php
if (isset($_GET["mas"])){
    $mas = $_GET["mas"];

    $rojo = mt_rand(0,255);
    $verde = mt_rand(0,255);
    $azul = mt_rand(0,255);



    if ($mas == 1){
        //echo " <p> $rojo, $verde, $azul </p>";
        //echo "<div style='background-color: rgb($rojo,$verde,$azul)'> </div>";
        $columnas = 6;
        $mascolumnas = 1;
    }else{
        echo "<p> No recoge nada </p>";
    }
}

?>

<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>

        *{
            margin: 0;
        }

        .cuadrados{
            width: <?= 100/$columnas?>%;
            height: 100%;
            background-color:rgb(<?="$rojo,$verde,$azul"?>);

        }
    </style>
</head>
<body>
    <div class="cuadrados">
        <p> <?= "$rojo, $verde, $azul" ?></p>
    </div>

</body>
</html>
=======
<?php
if (isset($_GET["mas"])){
    $mas = $_GET["mas"];

    $rojo = mt_rand(0,255);
    $verde = mt_rand(0,255);
    $azul = mt_rand(0,255);



    if ($mas == 1){
        //echo " <p> $rojo, $verde, $azul </p>";
        //echo "<div style='background-color: rgb($rojo,$verde,$azul)'> </div>";
        $columnas = 6;
        $mascolumnas = 1;
    }else{
        echo "<p> No recoge nada </p>";
    }
}

?>

<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>

        *{
            margin: 0;
        }

        .cuadrados{
            width: <?= 100/$columnas?>%;
            height: 100%;
            background-color:rgb(<?="$rojo,$verde,$azul"?>);

        }
    </style>
</head>
<body>
    <div class="cuadrados">
        <p> <?= "$rojo, $verde, $azul" ?></p>
    </div>

</body>
</html>
>>>>>>> 2d919193abded4072b4b4269185c88620da282ef
