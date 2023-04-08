<<<<<<< HEAD
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
    if (isset($_GET["texto"])){
        $texto = $_GET["texto"];
        echo " <p> $texto </p>";
        if (isset($_COOKIE["lista"])){
            $lista = json_decode( $_COOKIE["lista"], true );
        }else {
            $lista = array();
        }
        array_push($lista, $_GET["texto"]);
        setcookie("lista", json_encode($lista));


    }

    header("location:index.php");

?>
</body>
=======
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
    if (isset($_GET["texto"])){
        $texto = $_GET["texto"];
        echo " <p> $texto </p>";
        if (isset($_COOKIE["lista"])){
            $lista = json_decode( $_COOKIE["lista"], true );
        }else {
            $lista = array();
        }
        array_push($lista, $_GET["texto"]);
        setcookie("lista", json_encode($lista));


    }

    header("location:index.php");

?>
</body>
>>>>>>> 2d919193abded4072b4b4269185c88620da282ef
</html>