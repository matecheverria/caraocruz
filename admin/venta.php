<?php
include("conexion.php");
?>

<html>
    <head>
    <link rel="stylesheet" type="text/css" href="css/diseno.css" />
    <link rel="stylesheet" type="text/css" href="css/date.css" />
    </head>
    <title>
        
    </title>
    <body class="cuerpo" >
        <form class="formulario" id="form1" method="post" action="">
            <table class="tab_informe">
                <tr class="tr">
                    <h1>Seleccione opcion:</h1>
                    <td>
                        <input class="button" type="submit" value="Ventas" id="cigarros" name="cigarros" onclick="this.form.action = 'ventacigarro.php'">
                       
                    </td>
                    <td>                    
                       <input class="button" type="submit" value="Informe" id="boletas" name="boletas" onclick="this.form.action='informecigarro.php'">
                    </td>
                </tr>
            </table>
        </form>
    
</body>
</html>