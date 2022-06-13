<?php
session_start();
$_SESSION['usuario'];
$_SESSION['tipousuario'];
$user=$_SESSION['usuario'];

if($_SESSION['tipousuario']!=1){
    header("location:../index.html");
    session_destroy();
}

header("Cache-Control: no-cache, must-revalidate");
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
        <form name="ventaprodutos" method="post" action="">
        <h2>
        ingreso de ventas
        <br></br>
        <Select name='Producto' id='Producto'>";
            <option value='cero'>----</option>

        <?php
        $consulta="Select * from productos";
        $resultado=mysqli_query($conexion, $consulta);
        //echo $consulta;

        while($rows=mysqli_fetch_array($resultado)){
            echo"<option value='$rows[0]'> $rows[1] </option>";
        }
        
        ?>
        </select>

        <input class="button" type="submit" value="Agregar" onclick="this.form.action='agregaprod.php'">
        </h2>
            <table class="tab_informe">
                <tr>
                    <td>Seleccionar</td>
                    <td>Nombre</td>
                    <td class="cant">Efectivo</td>
                    <td class="cant">Debito</td>
                </tr>
                <?php
                 $consulta2="SELECT * FROM ventaprodflota inner join productos where productos.Cod_Producto=ventaprodflota.Cod_Producto";
                 $resultado2=mysqli_query($conexion, $consulta2);
                 //echo $consulta;
                 $chek=1;
                 while($rows2=mysqli_fetch_array($resultado2)){
                 echo"<tr><td>";
                 echo "<input type='checkbox' id='item$chek' name='item$chek' value=$rows2[1] >";
                 echo"</td><td>";
                 echo $rows2[3];
                 echo "</td><td>";
                 echo"<input type='text' class='imp' name='cant".$rows2[1]."'>";
                 echo "</td><td>";
                 echo"<input type='text' class='imp' name='cant2".$rows2[1]."'>";
                 echo "</td></tr>";   
                 $chek++;
                 }
                 
                ?>
                <tr>
                    <td>
                        <input class="button" type="submit" value="Grabar" onclick="this.form.action='grabarproductos.php'">
                    </td>
                    <td>
                        <input class="buttonv" type="submit" value="Eliminar" onclick="this.form.action='eliminar.php'">
                    </td>
                    <td colspan='2'>
                        <input class="button" type="submit" value="Volver" onclick="this.form.action='Volvervta.php'">
                    </td>
                </tr>
            </table>
          
        </form>
        
     
    </body>
</html>