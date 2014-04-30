{exp:channel:entries channel="solicitudes_ch" sort="DESC" limit="10" }

<table cellpadding="0" cellspacing="0" style="width: 100%" border="1">
	<tr>
		<td style="width: 128px">{tipo_problema}</td>
		<td style="width: 87px">{ubicacion}</td>
		<td style="width: 185px">{descripcion_problema} <br>status:
			{relacion_status} {relacion_status:descripcion_status}<br>{/relacion_status}</td>
		<td style="width: 150px"><img alt="" src="{foto_problema}" height="50" /></td>
		<td style="width: 155px">{danhos_otros}</td>
		<td>{otro_dep_afectado}</td>
	</tr>
</table>


{/exp:channel:entries}	

<?php


include("connect.php"); $link = conectar();

$resultado=mysql_query("insert into exp_relationships 
(parent_id,child_id,field_id,grid_field_id,grid_col_id,grid_row_id,order) 
values (10,5,9,0,0,0,3)",$link);


?>





