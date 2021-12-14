<?php

    //traigo header
    require 'parciales/header.php';
    $consulta_bar = 'SELECT * FROM bar';
    $resultados_bar = mysqli_query($conexionDB, $consulta_bar);

    // Pido una sola vez la de barmans
    $consulta_barman = 'SELECT * FROM barman';
    $resultados_barman = mysqli_query($conexionDB, $consulta_barman);
?>

<div class="container-fluid" id="bars">
    
    <div class="d-flex flex-column">
        <div class="d-flex justify-content-between titulo">
            <hr class="align-self-center">
            <h1>Bares</h1>
            <hr class="align-self-center">
        </div>
        <p class="align-self-center txt">Acá te vamos a mostrar y ayudar a encontrar
            las locaciones donde se expenden una gran variedad de tragos elavorados
            por sus tan queridos y preciados bartenders.
            <br>
            Son pequeños mundos en los cuales cualquier cosa puede pasar.</p>
    </div>

    
    <?php 
    // Recorren los resultados de la base de dato de bares y desglosan la información
    foreach($resultados_bar as $bar) { 
        $id_bar = $bar['id_bar'];
        $estrellas = $bar['estrellas'];
        ?>
        <div class="row bar">

            <!-- Contenedor de imagen -->
            <div class="col-sm-12 col-md-6 img-bar">
                <img class="img-fluid" width="100%" src="<?="img/".$bar['img']?>" alt="<?= $bar['name']?>">
            </div> 

            <!-- Contenedor de texto -->
            <div class="col-sm-12 col-md-6 info-bar">
                <div class="d-flex">
                    <h3><?= $bar ['name']?></h3>
                    <hr>
                </div>
                <div class="d-flex">   
                    
                    <p class="upper"><b>Ubicación: </b><?= $bar['localidad']?></p>
                    <p><b>Estrellas: </b> <?php 
                        // componente para agregar estrellitas
                        require "parciales/estrellas.php" ?></p>
                    <p class="upper"><b>Comida: </b><?= $bar['comida']?></p>
                </div>
                <p class="descripcion"><b>Descripción: </b><?= $bar['intro']?>. <a href="bar.php?id=<?=$bar['id_bar'];?>"><b>Ver más...</b></a></p>

                <?php
                // RELACIÓN DE BARES CON BARMAS
                require "parciales/bar_tiene_barmans.php" ?>
            </div>
        </div>
    <?php } ?> 

</div>

<?php
    //traigo footer
    require 'parciales/footer.php';
?>