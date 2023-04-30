<?php
echo "hola";
    include_once "conexión.php";
    $con = getConexion();


    try {
        $sql = "SELECT nombre from provincias";
        $st = $con->prepare($sql);
        $st -> bind_result($nombre);
        $st->execute();
        while ($st->fetch()){
            echo "<p> $nombre </p>";
        }
        $st->close();
        $con->close();

        //getConexion()->query($sql);
    }catch (mysqli_sql_exception $e){
        setcookie("error", $e ->getCode());

    }

?>
