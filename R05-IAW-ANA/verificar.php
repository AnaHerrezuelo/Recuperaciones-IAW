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
    <title>Document</title>
</head>
<body>



<?php


    if (getConexion()){
        //echo "conectado";
        if (isset($_GET["usuario"]) && isset($_GET["contra"])){
            $usu = $_GET["usuario"];
            $contra = $_GET["contra"];
            echo "$usu, $contra ";

            /*
            try {

                echo "Estoy en try ";

                $sql = "SELECT usuarios, contraseña FROM usuarios";
                $st = getConexion()->prepare($sql);
                $st->execute();
                $st->bind_result($usuarios, $contraseñas);
                while ($st->fetch()){
                    echo "<li> $usuarios, $contraseñas </li>";
                    $st->fetch();
                    if ($usuarios == $usu){
                        echo "nombre correcto";
                    }else{
                        echo "nombre incorrecto";
                    }
                }

                $st->close();
                getConexion()->close();

            }catch (mysqli_sql_exception $e){
                echo"estoy en catch";
            }
            */




            $sql = "SELECT usuarios, contraseña  FROM usuarios;";
            $ers = getConexion()->query($sql);
            $fila = $ers->fetch_assoc();
            while($fila){
                echo " <li> {$fila["usuarios"]}, {$fila["contraseña"]} </li>";
                    if ($usu == $fila["usuarios"] && $contra == $fila["contraseña"]){
                        echo "usuario y contraseña correctos";





                    }else{
                        echo "Usuario y contraseña incorrectos";
                    }
                $fila = $ers->fetch_assoc();
            }



        }
    } else{
        echo "no";
    }

    //header("location:index.php");

?>

</body>
</html>

