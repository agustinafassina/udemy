<?php 

//1.Una funcion
//2.Funcion validar un mail por filterbag
//3. Recoger por Get y validarla al mail

$parametroAValidar = $_GET['email'];

function validarMail($parametroAValidar)
{
    $dale = false ;
    if(!filter_var($parametroAValidar, FILTER_VALIDATE_URL,FILTER_FLAG_PATH_REQUIRED))
    {
        $dale = 'pasa afirmativo';
        return $dale;
    }
    else{
        $dale ='no pasa negativo';
        return $dale;
    }

}
?>
<h3>Resultado a mostrar: <?php echo validarMail($parametroAValidar); ?></h3>