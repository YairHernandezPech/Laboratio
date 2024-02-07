<?php
//configuracion necesaria para acceder a la base de datos
function conexion(){
    $hostname = "localhost:3307";
    $usuariodb = "root";
    $passworddb = "";
    $dbname = "Ddlap";

    //generando la conexion con el servidor

    $conectar = mysqli_connect($hostname,$usuariodb, $passworddb, $dbname);
    return  $conectar;

}

?>

