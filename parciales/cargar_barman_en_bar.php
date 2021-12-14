<?php 
    $consulta_enlace = 'SELECT * FROM barman_trabaja_bar WHERE id_barman='.$barman['id_barman'];
    $resultados = mysqli_query($conexionDB, $consulta_enlace);

    foreach($resultados as $res){
        foreach($resultados_bar as $bar){
            if ($res['id_bar'] == $bar['id_bar']) {
                echo $bar['name'],". ";                                    
            }
        }
    }
?>