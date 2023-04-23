<?php
include_once "conexion.php";

    if (getConexion()){
        echo "hola";
        if (isset($_GET["lista"])){
            $lista =  $_GET["lista"];

            echo " <p> $lista </p>";

            $sqlin = "INSERT INTO lista (lista) VALUES ('$lista')";
            getConexion()->query($sqlin);
            header("location:lista.php");


            /*
            try {
                $sql = "INSERT INTO usuarios(lista)  VALUES (?)";
                $st = getConexion()->prepare($sql);
                $st->bind_param("s", $lista1);
                $lista1 = $lista;
                $st->execute();
                $st->close();
                getConexion()->close();

                //getConexion()->query($sql);
            }catch (mysqli_sql_exception $e){
                setcookie("error", $e ->getCode());

            }
            */


        } else{
            echo "no recoge nada ";
        }


    }else{
        echo "adiós";
    }
?>