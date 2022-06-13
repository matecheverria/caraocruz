<?php
//Conexion a la base de datos
session_start();
$_SESSION['usuario'];
$_SESSION['tipousuario'];
$user=$_SESSION['usuario'];

if($_SESSION['tipousuario']!=1){
    header("location:../index.html");
    session_destroy();
}

include("conexion.php");

date_default_timezone_set('America/Santiago');
$fecha=date('m-d-Y');
    
?>

<table border="1">
                <tr>
                    <td>Indice</td>
                    <td>Nombre</td>
                    <td align='center'>cant_efec</td>
                    <td align='center'>cant_deb</td>
                </tr>

<?php
  $consulta="select * from ventaprodflota inner join productos where productos.Cod_Producto=ventaprodflota.Cod_Producto";
  $resultado=mysqli_query($conexion, $consulta);

      while($rows=mysqli_fetch_array($resultado)){

        $cantefe ="cant".$rows[1];
        $cantdebe ="cant2".$rows[1];
                
        $cantidadefe = $_POST[$cantefe];
        $cantidadebe = $_POST[$cantdebe];
        
        if ($cantidadefe ==""){
                $cantidadefe="0";
        }
        if ($cantidadebe ==""){
          $cantidadebe="0";
        }
          echo"<tr><td>";
          echo $rows[0];
          echo "</td><td>";
          echo $rows[3];
          echo "</td><td>";
          echo $cantidadefe;
          echo "</td><td>";
          echo  $cantidadebe;
          echo "</td></tr>";
          $val_efec=$cantidadefe * $rows[4];
          $val_deb=$cantidadebe * $rows[5];

          $sql="INSERT INTO ventaproducto (fecha, Cod_Producto, cant_efect, cant_deb, valor_efec, valor_deb) VALUES ('$fecha', '$rows[1]', '$cantidadefe','$cantidadebe','$val_efec','$val_deb' )";
          $grabar=mysqli_query($conexion, $sql);
          //echo $sql;
    }
        $sql="DELETE FROM ventaprodflota";
        $borra=mysqli_query($conexion, $sql);

        header("Location:menuadm.php");