<div class="col-sm-12 col-md-5" id="form-bar">

    <h4>Dueño de un bar</h4>

    <form method="POST" name="info-bar" action=" ">

        <div class="form-group">
            <label for="nombre-bar">Nombre del bar</label>
            <input type="text" class="form-control" name="nombre-bar" placeholder="Nombre del bar" required>
            <?php 
                if (isset($_POST['nombre-bar'])){
                    $nombre_bar = $_POST['nombre-bar'];
                }
            ?>
        </div>
            
        <div class="form-group">
            <label for="localidad">Localidad</label>
            <input type="text" class="form-control" name="localidad" id="localidad" placeholder="Localidad" required>
            <?php 
                if (isset($_POST['localidad'])){
                    $localidad = $_POST['localidad'];
                }
            ?>
        </div>
            
        <div class="row">
            <div class="form-group col-6">
                <label for="estrellas">Estrellas</label>
                <select class="custom-select" name="estrellas" class="form-control" id="estrellas">
                    <option value="1" selected>1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <?php 
                if (isset($_POST['estrellas'])){
                    $estrellas = $_POST['estrellas'];
                }
            ?>
            </div>
                
            <div class="form-group col-6">
                <label for="comida">Comida</label>
                <select class="custom-select" class="form-control" id="comida" name="comida">
                    <option value="si" selected>Si</option>
                    <option value="no">No</option>
                </select>
                <?php 
                if (isset($_POST['comida'])){
                    $comida = $_POST['comida'];
                }
            ?>
            </div>
        </div>

        <div class="form-group">
            <label for="desq-lugar">Descripción</label>
            <textarea type="text" rows="4" name="descripcion_bar" class="form-control" id="desq-lugar" placeholder="Ingrese una breve descripción..." required></textarea>
            <?php 
                if (isset($_POST['descripcion_bar'])){
                    $descripcion_bar = $_POST['descripcion_bar'];
                }
            ?>
        </div>

        <button type="submit" class="btn btn-primary btn-sub" name="regis-bar">Registrar bar</button>
    </form>
</div>

<?php 

    // Consulto la base de datos para obtener el último id
    $consulta_ult_bar = 'SELECT * FROM `bar` ORDER BY `bar`.`id_bar` DESC LIMIT 1';
    $resultado_ult_bar = mysqli_query($conexionDB, $consulta_ult_bar);
    $ultimo_bar = mysqli_fetch_row($resultado_ult_bar);
    $ult_id_bar = $ultimo_bar[0] + 1;

    if(isset($_POST['regis-bar'])){
        // Agrego nuevo registro
        $new_bar = "INSERT INTO `bar`(`id_bar`, `name`, `localidad`, `estrellas`, `comida`, `descripcion`, `img`, `intro`)
                VALUES ($ult_id_bar, '$nombre_bar', '$localidad', '$estrellas', '$comida', '$descripcion_bar', 'prueba_bar.jpg', '$descripcion_bar')";    
        if(mysqli_query($conexionDB, $new_bar)) {
            echo '<script>alert("Bar envíado con pendiente de aprobación.")</script>';
        } 
    }
?>  