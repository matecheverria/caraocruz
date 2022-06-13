<?php
session_start();
$_SESSION['usuario'];
$_SESSION['tipousuario'];
$user=$_SESSION['usuario'];

if($_SESSION['tipousuario']!=1){
    header("location:../index.html");
    session_destroy();
}

?>
<!DOCTYPE html>
<html lang="en">

<?php
include('conexion.php');

$post = (isset($_POST['fecha']) && !empty($_POST['fecha']));

if($post){
    $fechaseleccionada=htmlspecialchars($_POST["fecha"]);
}else{

    $m = date("m"); // Month value
    $de = date("d"); // Today's date
    $y = date("Y"); // Year value
    
    $fechaseleccionada=date('d-m-Y', mktime(0,0,0,$m,($de-1),$y));
}
$originalDate = $fechaseleccionada;
$newDate = date("m-d-Y", strtotime($originalDate));


?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/diseno.css" />
    <link rel="stylesheet" type="text/css" href="css/date.css" />
    <title>reportes</title>
</head>


<body class="cuerpo">
<form class= "formulario" name="inventario" method="post" action="informecigarro.php">
    <label class="textos" for="Name">Fecha Informe</label>

    <?php
    if(!$fechaseleccionada){
        echo "<input  type='date' name='fecha' step='1' min='01-01-2022' max='31-12-2022' value='date('d-m-Y')'>";
    }else{
        echo "<input  type='date' name='fecha' step='1' min='01-01-2022' max='31-12-2022' value='$fechaseleccionada' >";
    }
    ?>    
    
    <input class="button" type="submit" value="consulta" >

            <table class="tab_informe">
                <tr>
                    <td>Nro</td>
                    <td>Fecha</td>
                    <td>Nombre</td>
                    <td>Presentacion</td>
                    <td>P_efectivo</td>
                    <td>P_debito</td>
                    <td>Cantidad_efectivo</td>
                    <td>Cantidad_debito</td>
                    <td>Total_efectivo</td>
                    <td>Total_debito</td>
                </tr>
                <?php
                    //SELECT * FROM empleados INNER JOIN departamentos ON empleados.e_id = departamentos.d_id;
                    $consulta="select * from ventas inner join cigarros on cigarros.Cod_Cigarro = ventas.cod_cigarro where (ventas.cant_efec >=1 or ventas.cant_deb >=1) and fecha ='$newDate' ";
                    //echo $consulta;
                    $resultado=mysqli_query($conexion, $consulta);
                        $cont=1;
                        $totefec=0;
                        $totdeb=0;
                        while($rows=mysqli_fetch_array($resultado)){
                            
                            echo"<tr><td>";
                            echo $cont;
                            echo"</td><td align='center'>";
                            echo $rows[0];
                            echo"</td><td align='center'>";
                            echo $rows[7];
                            echo"</td>";
                            echo"<td>";
                            echo $rows[8];
                            echo"</td><td align='center'>";
                            echo $rows[9];
                            echo"</td>";
                            echo"<td>";
                            echo $rows[10];
                            echo"</td><td align='center'>";
                            echo $rows[2];
                            echo"</td>";
                            echo"<td>";
                            echo $rows[3];
                            echo"</td><td align='center'>";
                            echo $rows[4];
                            echo"<td>";
                            echo $rows[5];                           
                            echo"</td></tr>";
                            $cont++;
                            $totefec=$totefec+$rows[4];
                            $totdeb=$totdeb+$rows[5];
                        }

                        echo"<tr><td colspan='8'>Total a Rendir</td>";
                        echo "<td>";
                        echo $totefec;
                        echo"</td><td>";
                        echo $totdeb;
                        echo"</td></tr>";
                ?>
                <tr>
                    <td colspan="10">
                    <input class="button" type="submit" value="Volver" id="cigarros" name="cigarros" onclick="this.form.action = 'menuadm.php'">
                    </td>
                </tr>
            </table>
        </form>
</body>
</html>