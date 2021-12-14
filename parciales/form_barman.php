<div class="col-sm-12 col-md-5" id="form-barman">
    <h4>Barman</h4>
    <form method="POST" name="info-bar" action="">

        <div class="row">
            <div class="form-group col-6">
                <label for="nombre-barman">Nombre</label>
                <input type="text" class="form-control" id="nombre-barman" placeholder="Julian">
            </div>
            
            <div class="form-group col-6">
                <label for="apellido">Apellido</label>
                <input type="text" class="form-control" id="apellido" placeholder="Gomez">
            </div>
        </div>
        
        <div class="form-group">
            <label for="edad">Edad</label>
            <input type="text" class="form-control" id="edad" placeholder="25">
        </div>

        <div class="form-group">
            <label for="especialidad">Especialidad</label>
            <input type="text" class="form-control" id="especialidad"  placeholder="Mojito">
        </div>

        <div class="form-group">
            <label for="nota-personal">Nota personal</label>
            <textarea type="text" rows="4" class="form-control" id="nota-personal" placeholder="Ingrese una breve descripción de su persona"></textarea>
        </div>
       
        <button type="submit" class="btn btn-primary btn-sub" name="regis-barman">Registrarme como barman</button>
    </form>
</div>

<?php 


?>