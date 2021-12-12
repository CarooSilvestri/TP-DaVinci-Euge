<?php
//coencto con la base
    require 'funciones/conexion.php';
    $consulta = 'SELECT * FROM bar
                    ';
    $resultados = mysqli_query($conexionDB, $consulta);
    //foreach($resultados as $bar);
//traigo header
require 'parciales/header.php';
?>

<h2 class="text">Bares</h2>
<p class="text">Aca vamos a encontrar las locaciones donde se expenden una gran variedad de tragos elavorados por sus tan queridos y preciados bartenders. Son pequeños mundos en los cuales cualquier cosa puede pasar.</p>
<?php
foreach($resultados as $bar):
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

        <h3 class="text"><a href="bar.php?id=<?= $bar['id_bar'];?>"><?= $bar ['name']?></a></h3>

        <div class="localidad article text"><p>Ubicacion: <?= $bar ['localidad']?> </p></div> 
        <div class="article text"><p>Estrellas: <?= $bar ['estrellas']?></p></div>
        <div class="article text"><p>Comida: <?= $bar ['comida']?></p></div>
        <div class="article text"><p>Descripción del Bar: <?= $bar ['intro']?></p></div>
        </div>
    </div>
</div>
</article>
<?php
endforeach;
?> 



<?php
//traigo footer
require 'parciales/footer.php';?>