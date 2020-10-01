<?php
   include "conexion.php";

   $id=$_POST['txtid'];
   $apellido=$_POST['txtapellido'];
   $nombre=$_POST['txtnombre'];
   $correo=$_POST['txtcorreo'];
   $direccion=$_POST['txtdireccion'];
   
   $sql = "insert into cliente(cliente_id,apellido, nombre, correo_electronico, direccion) values($id,'$apellido','$nombre','$correo', '$direccion')";
   $cantidad= mysqli_query($conexion, $sql);
   echo $cantidad;
   
    
    

?>