<?php
//Conexion a la base de datos
session_start();
$_SESSION['usuario'];
$_SESSION['tipousuario'];
$user=$_SESSION['usuario'];

if($_SESSION['tipousuario']!=2){
    header("location:../index.html");
    session_destroy();
}

include("conexion.php");

$sql="DELETE FROM ventaprodflota";
$borra=mysqli_query($conexion, $sql);
header("Location:menuuser.php");

?>