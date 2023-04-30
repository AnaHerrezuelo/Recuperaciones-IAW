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
    <h1> Listado de localidades </h1>
    <table>
        <tr>
            <td> abecedario </td>
        </tr>
        <tr>
            <th> <a href="localidad.php"> Localidad </a> </th>
            <th> Provincia </th>
            <th> Población </th>


    <?php
        include_once "conexión.php";
        $con = getConexion();

        if ($con){
            //echo "conectado";
        }

    try {
        $sql = "SELECT  id_localidad, l.nombre as localidad, p.n_provincia, p.nombre as provincia, poblacion
        from localidades l
        join provincias p on l.id_localidad = p.id_capital
        ORDER BY poblacion";

        $st = $con->prepare($sql);
        $st -> bind_result($id_localidad, $nom_localidad, $n_provincia, $nom_provincia, $población);
        $st->execute();
        while ($st->fetch()){
            //echo " <p> $nom_localidad, $nom_provincia, $población</p>";
            echo " 
                <tr>
                    <td> $nom_localidad </td>
                    <td> $nom_provincia </td>
                    <td> $población </td>
                </tr>";
            //$st ->fetch();
        }
        $st->close();
       $con->close();

        //getConexion()->query($sql);
    }catch (mysqli_sql_exception $e){
        setcookie("error", $e ->getCode());

    }

    ?>


        </tr>
    </table>

</body>
</html>