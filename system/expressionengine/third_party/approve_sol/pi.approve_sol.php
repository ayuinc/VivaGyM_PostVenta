
<?php

class approve_sol
{
    public function approve_sol()
    {	
    	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$acc= $TMPL->fetch_param('acc');
		$paso= $TMPL->fetch_param('paso');
		$comentarios= $TMPL->fetch_param('comentarios');
		$persona_asignada_gym= $TMPL->fetch_param('persona_asignada_gym');

		$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
		$obten=mysql_fetch_row($result);
		$id_cliente = $obten[2];
		$tit_problema = $obten[15];

		// leer email cuando lo tomas de ee no funca
			$result_email=mysql_query("SELECT * FROM exp_members WHERE member_id=$id_cliente");
			$obten_email=mysql_fetch_row($result_email);
			$screen_name = $obten_email[3];
			$dir = $obten_email[9];

		$ant_paso=$paso-1;

		$prox_paso=$paso+1;

		if($paso=="2") { $mensaje="Agendar Inspección";};

		if($paso=="6") { $mensaje="Agendar Arreglo";};

		$ip=$_SERVER["REMOTE_ADDR"];

		$date = date_create();
		$entry_date=date_timestamp_get($date);

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET status = 'closed'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

		if ($acc=="si"){

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET form_field_27 = 'Aprobada',
		entry_date = '$entry_date',
		form_field_29 = '$comentarios'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

		// caso si pasas el ticket a "Inspección pendiente" sino lo cierras
		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
		SET form_field_12 = '2',
		form_field_14 = '$persona_asignada_gym'
		WHERE entry_id = $id_sol_garantia ");


		$resultado=mysql_query("insert into exp_freeform_form_entries_4 
		(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
		values ('1','$id_cliente','y','$ip','','open','$id_cliente','$mensaje','$id_sol_garantia','$prox_paso')");

		} elseif ($acc=="no"){ 

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET form_field_27 = 'Rechazada',
		status = 'closed',
		entry_date = '$entry_date',
		form_field_29 = '$comentarios'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

		// caso si pasas el ticket a "Inspección pendiente" sino lo cierras
		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
		SET form_field_12 = '4',
		status = 'closed',
		form_field_14 = '$persona_asignada_gym'
		WHERE entry_id = $id_sol_garantia ");
		};


    }
}


?>