<?php
session_start();

$usuario = $_POST["usuario"];
$palabra_secreta = $_POST["palabra_secreta"];
include("conexion.php");

$consulta="select * from usuarios where correo='$usuario'";
$resultado=mysqli_query($conexion, $consulta);
$rows=mysqli_fetch_array($resultado);
//echo $consulta; 
if($rows==0){
    echo "Usuario o clave Incorrecta";
}else{
    if($rows[3] != $palabra_secreta){
        echo "Clave Incorrecta";
    }else{

         if($rows[4]==1){
            $_SESSION['usuario']=$rows[0];
            $_SESSION['tipousuario']=$rows[4];
            header("location:admin/menuadm.php");
        }else{
            $_SESSION['usuario']=$rows[0];
            $_SESSION['tipousuario']=$rows[4];
            header("location:usuario/menuuser.php");
           
         }  
            

    }
    
}

?>