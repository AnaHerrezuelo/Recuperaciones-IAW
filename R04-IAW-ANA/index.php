<?php


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
        li{
            background-color: red;
            margin-top: 1px;
        }
        li>form{
            display: inline-block;
        }
    </style>
</head>
<body>
    <h1> Lista de tareas </h1>
    <form action="insertar.php" method="post">
        <input type="text" name="texto" id="texto">
        <button type="submit"> + </button>

    </form>

    <section>
        <ul>

    <?php
        $con = new mysqli("localhost", "root", "", "listatareas");

        if ($con){
            //echo "conectado";
            $sql = "SELECT id_tarea, tarea from lista;";
            $res = $con->query($sql);
            $fila = $res->fetch_assoc();
            while($fila){
                echo " <li> {$fila["id_tarea"]}, {$fila["tarea"]} 
                <form action='borrar.php'> 
                    <button> Borrar </button>
                </form> </li>";
                $fila=$res->fetch_assoc();
            }
        }else{
            echo "no ha conectado";
        }

    ?>

        </ul>
    </section>
</body>
</html>