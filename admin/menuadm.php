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
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/diseno.css" />
    <link rel="stylesheet" type="text/css" href="css/date.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <title>Ingreso de informacion</title>
</head>
<?php
echo "<h1>";
echo "Bienvenido " .$user; 
echo "</h1>";
?>
<body class="cuerpo" >
<form class="formulario" id="form1" method="post" action="">
            <table class="tab_informe">
                <tr class="tr">
                    <h1>Seleccione opcion</h1>
                    <td>
                        <input class="button" type="submit" value="Ventas" id="ventas" name="ventas" onclick="this.form.action = 'ventacigarro.php'">
                       
                    </td>
                    <td>                    
                       <input class="button" type="submit" value="Informe" id="Informe" name="Informe" onclick="this.form.action='informecigarro.php'">
                    </td>
                </tr>
                <tr>
                    <td>                    
                       <input class="button" type="submit" value="Ingreso Cigarro" id="Informecigarro" name="Informecigarro" onclick="this.form.action='ingresocigarro.php'">
                    </td>
                    <td>                    
                       <input class="button" type="submit" value="Informe Inventario" id="Informeinv" name="Informeinv" onclick="this.form.action='informeinventario.php'">
                    </td>
                </tr>
                <tr>
                    <td colspan='2'>                    
                       <input class="button" type="submit" value="Ingreso Boletas" id="IngresoBoletas" name="IngresoBoletas" onclick="this.form.action='ventavarios.php'">
                    </td>
                    
                </tr>
            </table>
        </form>
    
</body>
</html>