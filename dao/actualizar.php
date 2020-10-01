<?php
    include "conexion.php";
    //datos enviado por medio de un formulario
    //$_POST = datos ocultos, $_GET = datos por medio de la URL
    $id=$_POST['txtid'];
    $apellido=$_POST['txtapellido'];
    $nombre=$_POST['txtnombre'];
    $correo=$_POST['txtcorreo'];
    $direccion=$_POST['txtdireccion'];

    $sql="update cliente set apellido='$apellido', nombre='$nombre', correo_electronico='$correo', direccion='$direccion' where cliente_id=$id";
    $cantidad=mysqli_query($conexion,$sql);
    echo $cantidad;
?>