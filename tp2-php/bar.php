<?php
//conecto con la base
    require 'funciones/conexion.php';
    $id = $_GET['id'];
    $consulta = "SELECT 
                    b.id_bar,
                    b.name,
                    b.localidad,
                    b.estrellas,
                    b.comida,
                    b.descripcion,
                    b.img,
                    bm.nombre,
                    bm.apellido,
                    bm.imgs
                    
                FROM bar b
                INNER JOIN barman bm 
                
                
                WHERE b.id_bar = $id";
               //me quede aca arriba


$resultado = mysqli_query($conexionDB, $consulta);
   
$bar = mysqli_fetch_assoc($resultado);
//traigo el header 
require 'parciales/header.php';
?>
<article>
    <div class="container sup">
        <div class="row">
            <!--Contenedor de imagen -->
            <div class="col-4">
            <img class="img-fluid" src="<?="img/".$bar['img']?>" alt="<?= $bar ['name']?>">
            </div>
            <div class="col-8">
            <!--contenedor de texto-->
            <h3 class='h3'><?= $bar ['name']?></h3>
            <div class="localidad article"><p>Ubicacion: <?= $bar ['localidad']?> </p></div> 
            <div class="article"><p>Estrellas: <?= $bar ['estrellas']?></p></div>
            <div class="article"><p>Comida: <?= $bar ['comida']?></p></div>
            <div class="article"><p>Descripción del Bar: <?= $bar ['descripcion']?></p></div>
        </div>
<!--
<div class="container">
        <div class="row">
<?php
foreach($resultado as $barman){;
?>
    <div class="col-4 sup">
        <div class="card tarjeta-color tar">
        <img class="card-img-top rounded-circle fototar" src="img/bastardo.jpg" alt="Card image">
        <div class="card-body ">
        <h4 class="card-title tarcol h3"><?= $barman['nombre'] . " " . $barman['apellido']?></h4>
        <p class="card-text tarcol text-secondary">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Odit, numquam? Ipsa cumque ut nulla dolore eius asperiores ipsam, labore tempora. Sequi unde incidunt quas id magnam corrupti dolore recusandae sed?</p>
    </div>
  </div>
<?php
}
?>

</div>
</div>
-->
</article>
<?php
//traigo el footer
require 'parciales/footer.php';
?>