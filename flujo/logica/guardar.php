<?php
 require 'conexion.php';

 $nombre  = $_POST['nombre'];
 $direccion  = $_POST['direccion'];
 $telefono  = $_POST['telefono'];
 $articulo  = $_POST['articulo'];
 $cantidad = $_POST['cantidad'];
 $fechasalida  = $_POST['fechasalida'];
 $fechaentrega  = $_POST['fechaentrega'];
 $observaciones  = $_POST['observaciones'];

$insertar = "INSERT INTO clientes VALUES ('$nombre','$direccion','$telefono','$articulo','$cantidad','$fechasalida','$fechaentrega','$observaciones') ";

$query = mysqli_query($conectar, $insertar);

if($query){

   echo "<script> alert('correcto');
    location.href = '../index.html';
   </script>";

}else{
    echo "<script> alert('incorrecto');
    location.href = '../index.html';
    </script>";
}






?>
