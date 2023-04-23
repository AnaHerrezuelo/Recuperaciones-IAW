<?php
    error_reporting(E_ERROR);
    $driver = new mysqli_driver();
    $driver -> report_mode = MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT;

    function getConexion(){
        $con = new mysqli("localhost", "root", "", "accesousuarios");
        return $con;
    }
    /*
    function mensajeError($codigo){
        if ($codigo == 2002)
            return "Ha fallado la conexión a la base de datos";
        elseif ($codigo == 1045)
            return "Usuario o ocntraseña incorrecto";
        elseif ($codigo == 1044)
            return  "no se ha podido abrir la base de datos";
        else
            return "Error desconocido";
    }
    */

?>