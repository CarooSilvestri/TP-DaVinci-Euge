<?php
     // traigo el header
    require 'parciales/header.php';
    $consulta_barman = 'SELECT * FROM barman';
    $resultados_barman = mysqli_query($conexionDB, $consulta_barman);
    // Pido una sola vez la de bares
    $consulta_bar = 'SELECT * FROM bar';
    $resultados_bar = mysqli_query($conexionDB, $consulta_bar);
   
?>

<div class="container-fluid" id="barmans">

    <div class="d-flex flex-row justify-content-between titulo">
        <hr class="align-self-center">
        <h1>Barmans</h1>
        <hr class="align-self-center">
    </div>

    <div class="row justify-content-center">
        
        <?php foreach($resultados_barman as $barman){ ?>
            <div class="col-sm-12 col-md-6 col-lg-3 col-card">
                <div class="card d-flex flex-column">
                    <img class="card-img-top img-fluid" 
                        src="<?="img/".$barman['imgs']?>" 
                        alt="<?=$barman['nombre']." ".$barman['apellido']?>">
                    <div class="card-body mb-auto">
                        <h4 class="card-title"><?= $barman['nombre'] . " " . $barman['apellido']?></h4>
                        <p class="card-text text-secondary"><?= $barman['descripcion']?></p>
                        <div class="datos">
                            <p><b>Edad:</b> <?= $barman['edad']?></p>
                            <p><b>Especialidad:</b> <?= $barman['especialidad']?></p>
                            <p><b>Encontralo en:</b> <?php include "parciales/cargar_barman_en_bar.php"?></p>
                        </div>
                    </div>
                </div>
            </div> 
        <?php } ?>
    </div> 
</div>

<?php require 'parciales/footer.php';?>