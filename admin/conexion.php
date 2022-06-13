<?php
	//Sintaxis de conexion de la base de datos de muestra para PHP y MySQL.
	
	//Conectar a la base de datos
	
	$hostname="localhost";
	$username="root";
	$password="Pruebasweb1234";
	$dbname="local_pruebas";

	
    $conexion= mysqli_connect($hostname,$username, $password) or die ('Error de conexion: ' . $mysqli->connect_error);
	mysqli_select_db($conexion, $dbname);
?>