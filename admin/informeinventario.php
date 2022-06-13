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
    <label class="textos" for="Name">Informe inventario</label>
              <table class="tab_informe">
                <tr>
                    <td>Nro</td>
                    <td>Nombre</td>
                    <td>Presentacion</td>
                    <td>Cantidad</td>
                    <td>Total Ventas</td>
                    <td>Total Fisico</td>
                </tr>
                <?php
                  
                    //$consulta="SELECT * FROM cigarros inner join ingreso_cigarros on ingreso_cigarros.Cod_Cigarro=cigarros.Cod_Cigarro";
                    $consulta="SELECT * FROM cigarros";
                    //echo $consulta;
                    $resultado=mysqli_query($conexion, $consulta);
                        $cont=1;
                        while($rows=mysqli_fetch_array($resultado)){
                            
                            echo"<tr><td>";
                            echo $cont;
                            echo"</td><td align='center'>";
                            echo $rows[1];
                            echo"</td>";
                            echo"<td>";
                            echo $rows[2];
                            echo"</td><td align='center'>";
                            
                            $consulta2="SELECT * FROM cigarros inner join ingreso_cigarros on ingreso_cigarros.Cod_Cigarro=cigarros.Cod_Cigarro where ingreso_cigarros.cod_cigarro='$rows[0]'";
                            $resultado2=mysqli_query($conexion, $consulta2);

                            //este while es para contabilizar la cantidad total de inresos en la tabla inventario. 
                            $total=0;
                            while($rows2=mysqli_fetch_array($resultado2)){
                                $total=$total+$rows2[8];
                                }
                            echo $total;  
                            echo"</td><td>";
                            
                            $consulta3="Select * from cigarros inner join ventas on ventas.cod_cigarro=cigarros.Cod_Cigarro where ventas.cod_cigarro='$rows[0]'";
                            $resultado3=mysqli_query($conexion,$consulta3);
                            
                            //echo $consulta3;
                            $totalventa=0; 
                            while($rows3=mysqli_fetch_array($resultado3)){
                                $totalventa=$totalventa + ($rows3[7]+$rows3[8]);
                            }

                            Echo $totalventa;
                            echo"</td><td>";
                            echo $total-$totalventa; 
                            echo"</td></tr>";
                            $cont++;
                            
                        }

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