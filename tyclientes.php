<?php
session_start();
include './php/conexion.php';
if(!isset($_SESSION['prueba_cerficados']))
  {header("Location: ./index.php");}
  $arreglo  = $_SESSION['prueba_cerficados'];

$password="";

if(isset($_POST['c_account_password'])){
    if($_POST['c_account_password']!=""){
        $password = $_POST['c_account_password'];
        $email= $_POST['c_email_address'];
        $cedula= $_POST['c_cedula'];
    }
}

$id_usuario = $conexion->insert_id;
$fecha = date('Y-m-d h:m:s');

$resultado=$conexion->query("SELECT EXISTS (SELECT * FROM usuario
    WHERE email='$email' or cedula='$cedula');");
$row=mysqli_fetch_row($resultado);

    if ($row[0]=="1") {
            header("Location: ./admin/clientes.php?successdup");
    }else{
           $conexion->query("insert into usuario (nombre,telefono,email,password,img_perfil,
           nivel,cedula,fecha,fecha_creacion,usuario_creacion)
             values(
               '".$_POST['c_fname']." ".$_POST['c_lname']."',
               '".$_POST['c_phone']."',
               '".($email)."',
               '".sha1($password)."',
               'default.jpg',
               'cliente',
               '".($cedula)."',
               '".$_POST['c_fecha']."',
               '$fecha',
               $id_usuario
                   )
           ")or die($conexion->error);
           header("Location: ./admin/clientes.php?success");
    }



?>
