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
                    <td>Codigo</td>
                    <td>Nombre</td>
                    <td align='center'>Presentacion</td>
                    <td align='center'>Cantidad</td>
                </tr>

<?php
  $consulta="select * from cigarros";
  $resultado=mysqli_query($conexion, $consulta);

      while($rows=mysqli_fetch_array($resultado)){

        $cant ="cant".$rows[0];
                
        $cantidad = $_POST[$cant];
        
        if ($cantidad ==""){
                $cantidad="0";
        }

            echo"<tr><td>";
            echo $rows[0];
            echo "</td><td>";
            echo $rows[1];
            echo "</td><td>";
            echo $rows[2];
            echo "</td><td>";
            echo  $cantidad;
            echo "</td></tr>";
           
           $sql="INSERT INTO ingreso_cigarros (fecha_recepcion, cod_cigarro, cantidad) VALUES ('$fecha', '$rows[0]', $cantidad)";
           $grabar=mysqli_query($conexion, $sql);
            //echo $sql;

    }
    //echo $sql;
    header("Location: menuadm.php");
    return;

?>