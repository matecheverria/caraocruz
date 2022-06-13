<?php
session_start();
$_SESSION['usuario'];
$_SESSION['tipousuario'];
$user=$_SESSION['usuario'];

if($_SESSION['tipousuario']!=2){
    header("location:../index.html");
    session_destroy();
}
//Conexion a la base de datos
include("conexion.php");

date_default_timezone_set('America/Santiago');
$fecha=date('m-d-Y');
    
?>

<table border="1">
                <tr>
                    <td>Nombre</td>
                    <td>Presentacion</td>
                    <td align='center'>Efectivo</td>
                    <td align='center'>Debito</td>
                </tr>

<?php
  $consulta="select * from cigarros";
  $resultado=mysqli_query($conexion, $consulta);

      while($rows=mysqli_fetch_array($resultado)){

        $efec="efe".$rows[0];
        $debe="deb".$rows[0];
        
        $efectivo = $_POST[$efec];
        $debito = $_POST[$debe];

        if ($efectivo ==""){
                $efectivo="0";
        }
        if ($debito ==""){
                $debito="0";
        }
        
            echo"<tr><td>";
            echo $rows[1];
            echo "</td><td>";
            echo $rows[2];
            echo "</td><td>";
            echo $efectivo * $rows[3];
            echo "</td><td>";
            echo $debito * $rows[4];
            echo "</td></tr>";
            $val_efec=$efectivo * $rows[3];
            $val_deb=$debito * $rows[4];

            $sql="INSERT INTO ventas (fecha, cod_cigarro, cant_efec, cant_deb, valor_efe, valor_deb) VALUES ('$fecha', '$rows[0]', $efectivo, $debito, $val_efec, $val_deb)";
            $grabar=mysqli_query($conexion, $sql);
            //echo $sql;

    }
    //echo $sql;
    header("Location: menuuser.php");
    return;

?>