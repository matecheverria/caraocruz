<?php
session_start();
$_SESSION['usuario'];
$_SESSION['tipousuario'];
$user=$_SESSION['usuario'];

if($_SESSION['tipousuario']!=1){
    header("location:../index.html");
    session_destroy();
}

include("conexion.php");

$fech=$_POST['fecha'];

$yea=substr($fech, 0,4);
$mes=substr($fech, 5,2);
$dia=substr($fech, 8,2);
//cho $yea, $mes, $dia;

$fecha = $mes."-".$dia."-".$yea;
echo $fecha;

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
        header("Location: menu.php");
        return;

//INSERT INTO `ventas` (`fecha`, `cod_cigarro`, `cant_efec`, `cant_deb`, `valor_efe`, `valor_deb`) VALUES ('2022-06-02', 'BK10', '1', '1', '2200', '2500');

?>