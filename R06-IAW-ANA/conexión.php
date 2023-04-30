<?php

    function getConexion(){
        $con = new mysqli("localhost", "root", "", "geografia");
        return $con;
    }
?>
