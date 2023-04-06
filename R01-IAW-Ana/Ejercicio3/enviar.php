
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<?php

    if (isset($_GET["color1"]) && isset($_GET["color2"]) && isset($_GET["filas"]) && isset($_GET["columnas"])){
        $c1 = $_GET["color1"];
        $c2 = $_GET["color2"];
        $filas = $_GET["filas"];
        $columnas = $_GET["columnas"];

        if ($c1 && $c2 && $filas && $columnas){
            echo "hay algo";
            echo "$c1 $c2 $filas $columnas";
            //echo " <body style='background-color: $c1 '> ";

        }else{

            echo "<h1> Formato Incorrecto </h1>"."Introduce información <br>"."<a href='index.php'> Volver al formulario </a>";
        }
    }
?>

</body>


</html>
