<?php
//Conexion a la base de datos
include("conexion.php");
$prod=$_POST['Producto'];

$consulta="INSERT INTO ventaprodflota (`Cod_Producto`) VALUES ('$prod')";
$resultado=mysqli_query($conexion, $consulta);
//echo $consulta;
header("location:ventavarios.php");
    
?>