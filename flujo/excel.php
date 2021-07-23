<?php
header("Content-Type: application/xls");
header("Content-Disposition: attachment; filename=archivo.xls");
$conexion=mysqli_connect('localhost','root','','logistica');
 ?>
 <table class="table" border = "1">
   <tr>
     <th scope="col">Nombres y Apellidos</td>
     <th scope="col">Direcci&ntilde;on</td>
     <th scope="col">Tel&ntilde;efono</td>
     <th scope="col">Art&ntilde;iculo</td>
     <th scope="col">Cantidad</td>
     <th scope="col">Fecha de Salida</td>
     <th scope="col">Fecha de Recepci&ntilde;on</td>
     <th scope="col">Observaciones</td>
   </tr>

   <?php
   $sql="SELECT * from clientes";
   $result=mysqli_query($conexion,$sql);

   while($mostrar=mysqli_fetch_array($result)){
    ?>

   <tr>
     <td><?php echo $mostrar['nombre'] ?></td>
     <td><?php echo $mostrar['direccion'] ?></td>
     <td><?php echo $mostrar['telefono'] ?></td>
     <td><?php echo $mostrar['articulo'] ?></td>
     <td><?php echo $mostrar['cantidad'] ?></td>
     <td><?php echo $mostrar['fechasalida'] ?></td>
     <td><?php echo $mostrar['fechaentrega'] ?></td>
     <td><?php echo $mostrar['observaciones'] ?></td>
   </tr>
 <?php
 }
  ?>
 </table>
