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
        <form name="inventario" method="post" action="grabarcigarro.php">
        
            <table class="tab_informe">
                <tr>
                <h2>ingreso Inventario Cigarros</h2>
                    <td>Nombre</td>
                    <td>Presentacion</td>
                    <td class="cant">Cantidad</td>
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
                            echo"<input type='text' class='imp' name='cant".$rows[0]."'>";
                            echo"</td></tr>";
                        }
                ?>
                <tr>
                    <td colspan="2">
                        <input class="volver" type="submit" value="volver" onclick="this.form.action='menuadm.php'">    
                    </td>
                    <td colspan="2">
                        <input class="button" type="submit" value="Grabar" >
                    </td>
                </tr>
            </table>
          
        </form>
        
     
    </body>
</html>