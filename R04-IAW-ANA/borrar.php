<?php
    $con3 = new mysqli("localhost", "root", "", "listatareas");



    if ($con3){
        echo "conectado";




        /*
        $sql3 = "SELECT id_tarea,tarea from lista;";
        $ers = $con3->query($sql3);
        $fila = $ers->fetch_assoc();
        if ($fila){
            echo " {$fila["id_tarea"]}, {$fila["tarea"]}";
        }
        */


    }else{
        echo "no ha conectado";
    }
?>