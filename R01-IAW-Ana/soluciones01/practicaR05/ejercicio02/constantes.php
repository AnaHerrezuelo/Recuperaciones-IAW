<?php
const FALTAN_DATOS=1;
const DATOS_NO_NUMERICOS=2;
const FILAS_IMPARES=3;
const COLUMNAS_PARES=4;
const MAL_RANGO_FILA=5;
const MAL_RANGO_COLUMNA=6;

const TEXTO_ERROR=array(
    FALTAN_DATOS=>"Faltan datos",
    DATOS_NO_NUMERICOS=>"Formato incorrecto de datos, deben de ser números",
    FILAS_IMPARES=>"Las filas deben de ser impares y estar entre 0 y 100",
    COLUMNAS_PARES=>"Las columnas deben de ser pares y estar entre 0 y 100",
    MAL_RANGO_COLUMNA=>"Las columnas deben de ser un número par entre 0 y 100",
    MAL_RANGO_FILA=>"Las filas deben de ser un número impar entre 0 y 100",
);


?>