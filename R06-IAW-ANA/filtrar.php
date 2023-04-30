<?php
    include_once "conexión.php";
    $con = getConexion();


    try {
        $sql = "SELECT nombre from localidades where nombre LIKE upper('a%');";

        $st = $con->prepare($sql);
        $st -> bind_result($nombre);
        $st->execute();
        while ($st->fetch()){
            echo "<p> $nombre </p>";

        }
        $st->close();
        $con->close();



    }catch (mysqli_sql_exception $e){


    }
header("location:index2.php");
?>