<div class="col-sm-12 col-md-5" id="form-barman">
    <h4>Barman</h4>
    <form method="POST" name="info-bar" action="">

        <div class="row">
            <div class="form-group col-6">
                <label for="nombre-barman">Nombre</label>
                <input type="text" class="form-control" id="nombre-barman" name="nombre_barman" placeholder="Julian" required>
                <?php 
                    if (isset($_POST['nombre_barman'])){
                        $nombre_barman = $_POST['nombre_barman'];
                    }
                ?>
            </div>
            
            <div class="form-group col-6">
                <label for="apellido">Apellido</label>
                <input type="text" class="form-control" id="apellido" name="apellido_barman" placeholder="Gomez" required>
                <?php 
                    if (isset($_POST['apellido_barman'])){
                        $apellido_barman = $_POST['apellido_barman'];
                    }
                ?>
            </div>
        </div>
        
        <div class="form-group">
            <label for="edad">Edad</label>
            <input type="number" class="form-control" id="edad" name="edad" placeholder="25" required>
            <?php 
                if (isset($_POST['edad'])){
                    $edad = $_POST['edad'];
                }
            ?>
        </div>

        <div class="form-group">
            <label for="especialidad">Especialidad</label>
            <input type="text" class="form-control" id="especialidad" name="especialidad" placeholder="Mojito" required>
            <?php 
                if (isset($_POST['especialidad'])){
                    $especialidad = $_POST['especialidad'];
                }
            ?>
        </div>

        <div class="form-group">
            <label for="nota-personal">Nota personal</label>
            <textarea type="text" rows="4" class="form-control" id="nota-personal" name="descripcion_barman" placeholder="Ingrese una breve descripción de su persona"></textarea>
            <?php 
                if (isset($_POST['descripcion_barman'])){
                    $descripcion_barman = $_POST['descripcion_barman'];
                }
            ?>
        </div>
       
        <button type="submit" class="btn btn-primary btn-sub" name="regis-barman">Registrarme como barman</button>
    </form>
</div>

<?php 

    // Consulto la base de datos para obtener el último id
    $consulta_ult_barman = 'SELECT * FROM `barman` ORDER BY `barman`.`id_barman` DESC LIMIT 1';
    $resultado_ult_barman = mysqli_query($conexionDB, $consulta_ult_barman);
    $ultimo_barman = mysqli_fetch_row($resultado_ult_barman);
    $ult_id_barman = $ultimo_barman[0] + 1;

    if (isset($_POST['regis-barman'])) {
        // Agrego nuevo registro
        $nuevo_barman = "INSERT INTO `barman`(`id_barman`, `nombre`, `apellido`, `edad`, `descripcion`, `especialidad`, `imgs`) 
                    VALUES ($ult_id_barman,'$nombre_barman','$apellido_barman','$edad','$descripcion_barman' ,'$especialidad','prueba_barman.jpg')";    
        if(mysqli_query($conexionDB, $nuevo_barman)) {
            echo '<script>alert("Ya has sido agregado, ahora debes esperar la aprobación!")</script>';
        } 
    } 
?>