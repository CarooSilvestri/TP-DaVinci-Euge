<?php
session_start(); 
//traigo el header
require 'parciales/header.php';
?>

<form action="login.php" method="post">
    <label for="usuario">Usuario</label>
    <input id="usuario" name="usuario" type="text">
    <label for="contrasena">Contraseña</label>
    <input id="contrasena" name="contrasena" type="password">
    <input type="submit" value="Enviar">
</form>

<?php
//traigo el footer
require 'parciales/footer.php';
?>