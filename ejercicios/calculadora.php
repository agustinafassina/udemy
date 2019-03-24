<?php 
/*
Calculadora en PHP que tenga
un interfaz de un formulario

Detalles
3 campos
sumar, restar, dividir,, multiplicar
valor numero uno
valor numero dos

valor resultado

formulario POST
*/

if(!is_null($_POST['sumar']))
{
    if($_POST['sumar']){
        $resultado = "El resultado es:" .($_POST['uno'] + $_POST['dos']); 
    }
    else if($_POST['restar']){
        $resultado = "El resultado es:" .($_POST['uno'] - $_POST['dos']); 
    }
    else if($_POST['multiplicar']){
        $resultado = "El resultado es:" .($_POST['uno'] * $_POST['dos']); 
    }
    else if($_POST['dividir']){
        $resultado = "El resultado es:" .($_POST['uno'] / $_POST['dos']); 
    }


}else{
    $resultado ='datos no recibidos';
}

?>
<form action="calculadora.php" method="POST">
    uno <input type="text" name="uno">
    dos <input type="text" name="dos">
    Cuenta:
    <input type="submit" name="sumar" value="Sumar">
    <input type="submit" name="restar" value="Restar">
    <input type="submit" name="dividir" value="Dividir">
    <input type="submit" name="multiplicar" value="Multiplicar">
    
</form>

<?php echo $resultado;?>