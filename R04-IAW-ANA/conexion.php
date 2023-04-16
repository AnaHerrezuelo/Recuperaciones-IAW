<?php

    error_reporting(E_ERROR);
    $driver = new mysqli_driver();
    $driver -> report_mode = MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT;

    function getConexion(){
        $con = new mysqli("localhost", "root", "", "listatareas");
        return $con;
    }


?>