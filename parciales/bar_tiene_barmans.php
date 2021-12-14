<?php

    // Obtenes especificamente aquellos resultados que tinen el id del bar
    $consulta_enlace = 'SELECT * FROM barman_trabaja_bar WHERE id_bar='.$id_bar;
    $resultados_especificos = mysqli_query($conexionDB, $consulta_enlace);
    // [dato1, dato2, dato3] = [1, 3 , 4]
    ?>
    <div class="d-flex circulitos-barmans justify-content-evenly">
        <p><b>Acá podes encontrar a:</b> 
        <?php 
        
            foreach($resultados_especificos as $barman_especifico){

                foreach($resultados_barman as $barman){

                    // Si el id de la base de datos "barman_trabaja_bar" coincide con algún id 
                    // de barman => se crea el HTML, de lo contrario no hace nada.
                    if ($barman_especifico['id_barman'] == $barman['id_barman']) { ?>

                        <div class="d-flex flex-column cont-chiquito"> 
                            <img class="img-fluid rounded-circle"
                            width="40px" 
                            src="<?="img/".$barman['imgs']?>" 
                            alt="<?=$barman['nombre']." ".$barman['apellido']?>">
                            <p><?= $barman['nombre']; ?></p>
                        </div>      
        <?php       }
                }
        }
    ?>
    </div>