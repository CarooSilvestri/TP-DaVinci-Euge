<?php
//Defino variable de conexión 
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_base = "web_tragos";
//conecto con la bese 
$conexionDB = mysqli_connect($db_host, $db_user, $db_pass, $db_base);
//aclaro a la base que caracter quiero
mysqli_set_charset($conexionDB, 'utf8mb4');
?>