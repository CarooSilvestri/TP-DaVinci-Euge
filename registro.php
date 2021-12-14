<?php require 'parciales/header.php';?>

<div class="container-fluid" id="registro">

    <div class="d-flex flex-row justify-content-between titulo">
        <hr class="align-self-center">
        <h1>Registro</h1>
        <hr class="align-self-center">
    </div>

    <div class="row formulario">

        <h2>Soy:</h2>

        <?php include "parciales/form_bar.php"; ?>

        <div class="col-1 align-self-center d-none d-md-block">
            <hr class="divisor">
        </div>

        <?php include "parciales/form_barman.php"; ?> 
    </div>
</div>


<?php require 'parciales/footer.php'; ?>