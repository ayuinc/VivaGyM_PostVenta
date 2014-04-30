<?php
date_default_timezone_set('America/Lima');
function conectar(){
if(!($link=mysql_connect("localhost","root","")))
{
 echo "Fallo en el establecimiento de la conexión";
 exit();
 }


if(!mysql_select_db("gym",$link)){
echo "Error en la selección de la base de datos";
exit();
}
return $link;
}

$sys_dbhost='localhost';// nombre servidor a contiene la base
$sys_dbname='gym';// nombre base de datos
$sys_dbuser='root';//nombre del usuario con acceso
$sys_dbpasswd='';//clave del usuario
$sys_server='mysql'; // tipo del servidor

// funcion de conexion a la base de datos
mysql_pconnect("$sys_dbhost","$sys_dbuser","$sys_dbpasswd");

?>
