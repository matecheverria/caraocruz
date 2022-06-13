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
    <link rel="stylesheet" type="text/css" href="css/diseno.css" />
    <link rel="stylesheet" type="text/css" href="css/date.css" />
    </head>
    <title>
        
    </title>
    <body class="cuerpo"> 
        <form name="inventario" method="post" action="grabar.php">
        
            <table class="tab_informe">
                <tr>
                <h2>informe de ventas boletas</h2>
                    <td>Nombre</td>
                    <td>Presentacion</td>
                    <td class="cant">Monto</td>
                    <td class="cant">fecha</td>
                </tr>
                <?php
                    $consulta="select * from boletas";
                    $resultado=mysqli_query($conexion, $consulta);

                        while($rows=mysqli_fetch_array($resultado)){
                            echo"<tr><td>";
                            echo $rows[0];
                            echo"</td><td  align='center'>";
                            echo $rows[1];
                            echo"</td><td  align='center'>";
                            echo $rows[2];
                            echo"</td><td  align='center'>";
                            echo $rows[3];
                            echo"</td></tr>";
                        }
                ?>
                <tr>
                    <td colspan="4">
                    <input class="button" type="submit" value="Volver" id="cigarros" name="cigarros" onclick="this.form.action = 'menu.php'">
                    </td>
                </tr>
            </table>
          
        </form>
        
     
    </body>
</html>