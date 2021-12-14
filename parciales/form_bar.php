<div class="col-sm-12 col-md-5" id="form-bar">
    <h4>Dueño de un bar</h4>

    <form method="POST" name="info-bar" action="">

        <div class="form-group">
            <label for="nombre-bar">Nombre del bar</label>
            <input type="text" class="form-control" id="nombre-bar" placeholder="Nombre del bar">
        </div>
            
        <div class="form-group">
            <label for="localidad">Localidad</label>
            <input type="password" class="form-control" id="localidad" placeholder="Localidad">
        </div>
            
        <div class="row">
            <div class="form-group col-6">
                <label for="estrellas">Estrellas</label>
                <select class="custom-select" class="form-control" id="estrellas" >
                    <option value="1" selected>1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
                
            <div class="form-group col-6">
                <label for="comida">Comida</label>
                <select class="custom-select" class="form-control" id="comida" >
                    <option value="si" selected>Si</option>
                    <option value="no">No</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label for="desq-lugar">Descripción</label>
            <textarea type="text" rows="4" class="form-control" id="desq-lugar" placeholder="Ingrese una breve descripción..."></textarea>
        </div>

        <button type="submit" class="btn btn-primary  btn-sub" name="regis-bar">Registrar bar</button>
    </form>
</div>