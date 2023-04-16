<?php
    $con2 = new mysqli("localhost", "root", "", "listatareas");



    if ($con2){
        //echo "conectado";
        if (isset($_POST["texto"])){
            $texto =  $_POST["texto"];
            //echo " <p> $texto </p>";

            $sql2 = "INSERT INTO lista (tarea) VALUES ('$texto')";
            $con2->query($sql2);  //-> Añade la tarea

        header("location:index.php");

        } else{
            echo "no recoge nada ";
        }

    }else{
        echo "no ha conectado";
    }


?>

