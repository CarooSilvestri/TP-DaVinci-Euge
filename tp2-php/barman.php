<?php
require 'funciones/conexion.php';
$consulta = 'SELECT * FROM barman';
$resultados = mysqli_query($conexionDB, $consulta);
require 'parciales/header.php';

?>
<div class="container">
    <div class="row">
<?php
foreach($resultados as $barman){;
?>
    <div class="col-4 sup">
        <div class="card tarjeta-color tar">



    <img class="card-img-top rounded-circle fototar img-fluid" src="<?="img/".$barman['imgs']?>" alt="<?=$barman['nombre']." ".$barman['apellido']?>">
        



        <div class="card-body ">
        <h4 class="card-title tarcol h3"><?= $barman['nombre'] . " " . $barman['apellido']?></h4>
        <p class="card-text tarcol text-secondary">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Odit, numquam? Ipsa cumque ut nulla dolore eius asperiores ipsam, labore tempora. Sequi unde incidunt quas id magnam corrupti dolore recusandae sed?</p>
    </div>
  </div>
</div>

<?php
}
?>
</div> 