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
?>

<html>
    <head>
    <link rel="stylesheet" type="text/css" href="css/diseño.css" />
    <link rel="stylesheet" type="text/css" href="css/date.css" />
    </head>
    <title>
        
    </title>
    <body class="cuerpo"> 
        <form name="inventario" method="post" action="grabar2.php">
        <?php
        echo "<input  type='date' name='fecha' step='1' min='01-01-2022' max='31-12-2022' value='date('d-m-Y')'>";
        ?>
            <table class="tab_informe">
                <tr>
                <h2>ingreso de ventas</h2>
                    <td>Nombre</td>
                    <td>Presentacion</td>
                    <td class="cant">Efectivo</td>
                    <td class="cant">Debito</td>
                </tr>
                <?php
                    $consulta="select * from cigarros";
                    $resultado=mysqli_query($conexion, $consulta);

                        while($rows=mysqli_fetch_array($resultado)){
                            echo"<tr><td>";
                            echo $rows[1];
                            echo"</td><td  align='center'>";
                            echo $rows[2];
                            echo"</td><td>";
                            echo"<input type='text' class='imp' name='efe".$rows[0]."'>";
                            echo"</td><td>";
                            echo"<input type='text' class='imp' name='deb".$rows[0]."'>";
                            echo"</td></tr>";
                        }
                ?>
                <tr>
                    <td colspan="4">
                        <input class="button" type="submit" value="Grabar" >
                    </td>
                </tr>
            </table>
          
        </form>
        
     
    </body>
</html>