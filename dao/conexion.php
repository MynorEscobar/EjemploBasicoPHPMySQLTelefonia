<?php
    $servidor="localhost";
    $usuario="root";
    $contra="";
    $bd="proyectos2020_telefonia";
    /*cadena de conexion*/
    $conexion=mysqli_connect($servidor, $usuario, $contra, $bd);
    if(!$conexion){
        echo "Error en conexión";
    }

?>