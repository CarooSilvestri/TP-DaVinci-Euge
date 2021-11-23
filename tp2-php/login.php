<?php
//coencto con la base
    require 'funciones/conexion.php';
    $consulta = 'SELECT * FROM usuarios
                    ';
    $resultados = mysqli_query($conexionDB, $consulta);
    //foreach($resultados as $bar);
//traigo header
require 'parciales/header.php';

?> 

