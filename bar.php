<?php
    // traigo el header
    require 'parciales/header.php';

    // Pido una sola vez la de barmans
    $consulta_barman = 'SELECT * FROM barman';
    $resultados_barman = mysqli_query($conexionDB, $consulta_barman);

    // conecto con la base
    $id = $_GET['id'];
    $consulta = 'SELECT * from bar where id_bar='.$id;
    $resultado = mysqli_query($conexionDB, $consulta);

    // paso los datos únicos a un array => accedo por indice
    // array[1] = valor
    $bar = mysqli_fetch_row($resultado);
    $id_bar = $bar[0];
    $estrellas = $bar[3];
?>

    <div class="container-fluid" id="bar">
        
        <div class="d-flex justify-content-between titulo">
            <hr class="align-self-center">
            <h1><?= $bar[1]?></h1>
            <hr class="align-self-center">
        </div>

        <article class="row info-bar-extend justify-content-center">
            
            <!--Contenedor de imagen -->
            <div class="col-sm-12 col-md-5">
                <img class="img-fluid" src="<?="img/".$bar[6]?>" alt="<?= $bar[1]?>">
            </div>
            
            <!--contenedor de texto-->
            <div class="col-sm-12 col-md-6">
                <div class="d-flex justify-content-around">
                    <p class="upper"><b>Ubicacion:</b><br> <?= $bar [2]?> </p>
                    <p><b>Estrellas:</b><br> <?= include "parciales/estrellas.php" ?></p>
                    <p class="upper"><b>Comida:</b><br> <?= $bar [4]?></p>
                </div>
                <p><b>Descripción del Bar:</b><br> <?= $bar[5]?></p>
                <?php require "parciales/bar_tiene_barmans.php"; ?>
    
            </div>
        </article>
    </div>

<?php
//traigo el footer
require 'parciales/footer.php';
?>