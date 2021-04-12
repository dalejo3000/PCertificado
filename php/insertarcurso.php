<?php
session_start();
include './conexion.php';
if(!isset($_SESSION['prueba_cerficados']))
  {header("Location: ./index.php");}
  $arreglo  = $_SESSION['prueba_cerficados'];

$password="";

if(isset($_POST['c_account_password'])){
    if($_POST['c_account_password']!=""){
        $nombre= $_POST['nombre'];
    }
}

$id_usuario = $conexion->insert_id;
$fecha = date('Y-m-d h:m:s');

if(isset($_POST['nombre']) &&  isset($_POST['descripcion'])   &&  isset($_POST['duracion'])  &&  isset($_POST['fecha_inicio']) ){


            $conexion->query("insert into cursos
                (nombre,descripcion,duracion,fecha_inicio,fecha_creacion,usuario_creacion) values
                (
                    '".$_POST['nombre']."',
                    '".$_POST['descripcion']."',
                    '".$_POST['duracion']."',
                    '".$_POST['fecha_inicio']."',
                    '$fecha',
                    '$id_usuario'
                )   ")or die($conexion->error);
                header("Location: ../admin/cursos.php?success");
              }
?>
