
<?php

class confirm_sol
{
    public function confirm_sol()
    {
    	$rs = mysql_query("SELECT MAX(entry_id) AS id FROM exp_freeform_form_entries_2 ");
		if ($row = mysql_fetch_row($rs)) {
			$id_sol_garantia = $row[0];
		}

		$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
		$obten=mysql_fetch_row($result);
		$author_id = $obten[2];

		if ($id_cliente=$author_id){

			$ip=$_SERVER["REMOTE_ADDR"];

			$date = date_create();
			$entry_date=date_timestamp_get($date);

			$resultado=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
			values ('1','$id_cliente','y','$ip','$entry_date','closed','$id_cliente','Ingresar Solicitud de Inspección','$id_sol_garantia','1')");

			$resultadob=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
			values ('1','$id_cliente','y','$ip','','open','$id_cliente','Procesar Solicitud de Inspección','$id_sol_garantia','2')");
		} // fin if 


    }
}


?>