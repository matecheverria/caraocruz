<?php
//Conexion a la base de datos
session_start();
$_SESSION['usuario'];
$_SESSION['tipousuario'];
$user=$_SESSION['usuario'];

if($_SESSION['tipousuario']!=1){
    header("location:../index.html");
    session_destroy();
}

include("conexion.php");

date_default_timezone_set('America/Santiago');
$fecha=date('m-d-Y');
    
?>

<table border="1">
                <tr>
                <td>ckeck</td>
                    <td>Indice</td>
                    <td>Nombre</td>

                </tr>

<?php
  $consulta="select * from ventaprodflota inner join productos where productos.Cod_Producto=ventaprodflota.Cod_Producto";
  $resultado=mysqli_query($conexion, $consulta);
  $chek=1;

      while($rows=mysqli_fetch_array($resultado)){

        $post = (isset($_POST['item'.$chek]));

        echo"<tr><td>";
        

        if(!$post){
        $selectprod = $_POST['item'.$chek];
        echo "<input type='checkbox' name='$selectprod'>";
        }else {
            echo "<input type='checkbox' name='item$chek'>";
            //echo $rows[1];    
            $sql="delete from ventaprodflota where Cod_Producto='$rows[1]'";
            $borrar=mysqli_query($conexion, $sql);
            ///echo $sql;
        }

        $chek++;
    }
        header("Location:ventavarios.php");