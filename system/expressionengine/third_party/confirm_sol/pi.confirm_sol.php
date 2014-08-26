<?php
class confirm_sol
{
  public function confirm_sol() // funcion para generar los pasos en el form "Detalles ticket"
  {	
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;
		$id_cliente= $TMPL->fetch_param('id_cliente');
		$rol= $TMPL->fetch_param('rol');
		$admin_id= $TMPL->fetch_param('admin_id');

		$ip=$_SERVER["REMOTE_ADDR"];

		$date = date_create();
		$entry_date=date_timestamp_get($date);

  	$rs = mysql_query("SELECT MAX(entry_id) AS id FROM exp_freeform_form_entries_2 ");
		if ($row = mysql_fetch_row($rs)) { $id_sol_garantia = $row[0]; }

		if ($rol=="cli"){
			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
			$obten=mysql_fetch_row($result);
			$author_id = $obten[2];

			if ($id_cliente=$author_id){

				$resultado=mysql_query("insert into exp_freeform_form_entries_4 
				(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
				values ('1','$id_cliente','y','$ip','$entry_date','closed','$id_cliente','Ingresar Solicitud de Inspección','$id_sol_garantia','1')");

				$resultadob=mysql_query("insert into exp_freeform_form_entries_4 
				(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
				values ('1','$id_cliente','y','$ip','','open','$id_cliente','Procesar Solicitud de Inspección','$id_sol_garantia','2')");

				$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");
			} // fin if 
		}

		if ($rol=="adm"){

				$resultado=mysql_query("insert into exp_freeform_form_entries_4 
				(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_47) 
				values ('1','$admin_id','y','$ip','$entry_date','closed','$id_cliente','Ingresar Solicitud de Inspección','$id_sol_garantia','1','$admin_id')");

				$resultadob=mysql_query("insert into exp_freeform_form_entries_4 
				(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_47) 
				values ('1','$admin_id','y','$ip','','open','$id_cliente','Procesar Solicitud de Inspección','$id_sol_garantia','2','$admin_id')");

				$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");
		}
  } // fin de confirm_sol

  public function viva_approve_sol() // funcion para generar los pasos en el form "Detalles ticket"
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;
		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$acc= $TMPL->fetch_param('acc');
		$paso="2";
		$dir= $TMPL->fetch_param('dir');
		$comentarios= $TMPL->fetch_param('comentarios');
		$prioridad= $TMPL->fetch_param('prioridad');
		$persona_asignada_viva= $TMPL->fetch_param('persona_asignada_viva');
		$ip=$_SERVER["REMOTE_ADDR"];

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

		switch ($acc) {
		  case "si-gar": $txt_acc="Procede - Por garantía"; break;
		  case "si-exc": $txt_acc="Procede - Por excepción"; break;
		  case "no-fmant": $txt_acc="No procede - Falta mantenimiento"; break;
		  case "no-fgar": $txt_acc="No procede - Falta de garantía"; break;
		  }

		$date = date_create();
		$entry_date=date_timestamp_get($date);

		if($paso=="2") { $mensaje="Agendar Inspección";};
		if($paso=="6") { $mensaje="Agendar Arreglo";};

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET status = 'closed'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");

		if (($acc=="si-gar") or ($acc=="si-exc")){

			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET form_field_27 = 'Aprobada',
			entry_date = '$entry_date'
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

			// caso si pasas el ticket a "Inspección pendiente" sino lo cierras
			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
			SET form_field_12 = '3',
			form_field_13 = '$persona_asignada_viva',
			form_field_33 = '$prioridad',
			form_field_46 = '$txt_acc'
			WHERE entry_id = $id_sol_garantia ");

			$resultado=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
			values ('1','$id_cliente','y','$ip','','open','$id_cliente','$mensaje','$id_sol_garantia','$prox_paso')");

		} else{ 

			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET form_field_27 = 'Rechazada',
			status = 'closed',
			entry_date = '$entry_date'
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

			// caso si pasas el ticket a "Inspección pendiente" sino lo cierras
			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
			SET form_field_12 = '10', status = 'closed', form_field_46 = '$txt_acc', form_field_13 = '$persona_asignada_viva'
			WHERE entry_id = $id_sol_garantia ");

			$resultadog=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_27) 
			values ('1','$id_cliente','y','$ip','$entry_date','open','$id_cliente','Cerrar el caso','$id_sol_garantia','10','')");

		}
  } // fin viva_approve_sol

	public function user_book_insp() // funcion para generar los pasos en el form "Detalles ticket"
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_cliente= $TMPL->fetch_param('id_cliente');
		$relacion_dueno_departamento= $TMPL->fetch_param('relacion_dueno_departamento');
		$fecha_atencion_ticket= $TMPL->fetch_param('fecha_atencion_ticket');
		$hora_atencion_ticket= $TMPL->fetch_param('hora_atencion_ticket');
		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$orden_tramite= $TMPL->fetch_param('orden_tramite');
		$nombre_encargado_atencion= $TMPL->fetch_param('nombre_encargado_atencion');
		$celular_encargado_atencion= $TMPL->fetch_param('celular_encargado_atencion');
		$email_encargado_atencion= $TMPL->fetch_param('email_encargado_atencion');
		$ip=$_SERVER["REMOTE_ADDR"];
		$prox_paso=$orden_tramite+1;
		$admin_id= $TMPL->fetch_param('admin_id');

		$date = date_create();
		$entry_date=date_timestamp_get($date);

		$fecha_explode = explode("-", $fecha_atencion_ticket); // dividir la fecha de llegada para sumar 1 a las visitas
		$dia_consulta=$fecha_explode[0];
		$mes_consulta=$fecha_explode[1];
		$anio_consulta=$fecha_explode[2];

		$result_bloque_tiempo = mysql_query("SELECT id FROM exp_bloques WHERE YEAR(exp_bloques.inicio)=" . $anio_consulta . " AND DAY(exp_bloques.inicio)=" . $dia_consulta . " AND MONTH(exp_bloques.inicio)=" . $mes_consulta);
		$bloque_tiempo = mysql_fetch_row($result_bloque_tiempo);
		$id_bloque_tiempo = $bloque_tiempo[0];
		
		$insert_bloque_usuario = mysql_query("INSERT INTO exp_bloques_usuarios (usuario_id, bloque_evento_id, realizado) VALUES (" . $id_cliente . ", " . $id_bloque_tiempo . ", '')");

			$result_ev=mysql_query("SELECT * FROM eventos WHERE dia_evento=$dia_consulta and mes_evento=$mes_consulta and anio_evento=$anio_consulta");
		  $obten_ev=mysql_fetch_row($result_ev);
		  $id_dia_consulta = $obten_ev[0];
		  $cant_evento = $obten_ev[7];
		  $sumar_evento=$cant_evento+1;
		  $sqlUpdate_ev = mysql_query("UPDATE eventos SET cant_evento = $sumar_evento WHERE id_evento = $id_dia_consulta ");

		if ($relacion_dueno_departamento==""){
			$dueno_atiende_ticket="si";
			} else {
			$dueno_atiende_ticket="no";
			}
		$resultado=mysql_query("insert into exp_freeform_form_entries_4 
		(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_47) 
		values ('1','$id_cliente','y','$ip','','open','$id_cliente','GyM Asignar Inspector','$id_sol_garantia','4','$admin_id')");

		$resultadob=mysql_query("insert into exp_freeform_form_entries_4 
		(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_47) 
		values ('1','$id_cliente','y','$ip','','open','$id_cliente','Realizar Inspección','$id_sol_garantia','5','$admin_id')");

		// lectura de nro de veces de reagendado
		$result_reagenda=mysql_query("SELECT * FROM exp_freeform_form_entries_4 
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 3 ");
		$obten_reagenda=mysql_fetch_row($result_reagenda);
		$cont_reagenda = $obten_reagenda[22];
		$cont_reagenda_mas = $cont_reagenda+1;

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET status = 'closed',
		entry_date = '$entry_date',
		form_field_20 = '$dueno_atiende_ticket',
		form_field_21 = '$relacion_dueno_departamento',
		form_field_22 = '$nombre_encargado_atencion',
		form_field_23 = '$celular_encargado_atencion',
		form_field_24 = '$email_encargado_atencion',
		form_field_25 = '$fecha_atencion_ticket',
		form_field_26 = '$hora_atencion_ticket',
		form_field_32 = '$cont_reagenda_mas'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 3 ");

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
			SET form_field_12 = '4',
			edit_date = '$entry_date'
			WHERE entry_id = $id_sol_garantia ");
	} // fin user_book_insp


	public function gym_write_insp() // funcion para generar los pasos en el form "Detalles ticket"
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_cliente= $TMPL->fetch_param('id_cliente');
		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$persona_asignada_gym= $TMPL->fetch_param('persona_asignada_gym');
		$persona_asignada= $TMPL->fetch_param('persona_asignada');
		$paso= $TMPL->fetch_param('paso');
		$ip=$_SERVER["REMOTE_ADDR"];

		$prox_paso=$paso+1;	
		$mensaje_asig= "Asignado / ".$persona_asignada;
		$date = date_create();
		$entry_date=date_timestamp_get($date);
		$fecha_act=date('d-m-Y');
		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");
		if($paso=="4") {
			$texto_paso="Realizar inspección";

			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
				SET form_field_12 = '5',
				form_field_14 = '$persona_asignada_gym',
				form_field_30 = '$persona_asignada'
				WHERE entry_id = $id_sol_garantia ");
		}

		if($paso=="8") {
			$texto_paso="Realizar Arreglo";
			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET form_field_12 = '9', form_field_31 = '$persona_asignada'
				WHERE entry_id = $id_sol_garantia ");
		}

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET status = 'closed',entry_date = '$entry_date', form_field_27 = '$persona_asignada'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

	} // fin gym_write_insp

	public function insp_write_proc() // funcion para generar los pasos en el form "Detalles ticket"
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$paso= $TMPL->fetch_param('paso');
		$id_cliente= $TMPL->fetch_param('id_cliente');
		$entry_id= $TMPL->fetch_param('entry_id');

		$ip=$_SERVER["REMOTE_ADDR"];
		$date = date_create();
		$entry_date=date_timestamp_get($date);
		$fecha_atencion_ticket=date('d-m-Y');

		$result_aus=mysql_query("SELECT * FROM exp_freeform_form_entries_4 
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 5 ");
		$obten_aus=mysql_fetch_row($result_aus);
		$cliente_ausente = $obten_aus[23];

		if($cliente_ausente=="si"){
			$resultadoc=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_27,form_field_29) 
			values ('1','$id_cliente','y','$ip','','open','$id_cliente','Procesar Informe de Inspección','$id_sol_garantia','6','','$comentarios')");
			$sqlUpdate_a = mysql_query("UPDATE exp_freeform_form_entries_2 
				SET form_field_12 = '6', edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");

			$sqlUpdate_b = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET status = 'closed', form_field_32 = '4' WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 3 ");

			$sqlUpdate_c = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET status = 'closed',form_field_25 = '$fecha_atencion_ticket' WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 5 ");

		}else{ // colocar el plugin de envio de correos 

		$txt_no="La persona encargada no se encontraba en el inmueble para el inspección.";
		//obtener la fecha anteriormente asignada y restarle 1 por q se ha anulado esa fecha

			$result_fec=mysql_query("SELECT * FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 3 ");
			$obten_fec=mysql_fetch_row($result_fec);
			$fecha_seleccionada = $obten_fec[17];

			$fecha_exp_sel = explode("-", $fecha_seleccionada); // dividir la fecha de llegada para sumar 1 a las visitas
			$dia_exp_sel=$fecha_exp_sel[0];
			$mes_exp_sel=$fecha_exp_sel[1];
			$anio_exp_sel=$fecha_exp_sel[2];

				$result_exp_sel=mysql_query("SELECT * FROM eventos WHERE dia_evento=$dia_exp_sel and mes_evento=$mes_exp_sel and anio_evento=$anio_exp_sel");
			  $obten_exp_sel=mysql_fetch_row($result_exp_sel);
			  $id_dia_exp_sel = $obten_exp_sel[0];
			  $cant_exp_sel = $obten_exp_sel[7];
			  $sumar_exp_sel=$cant_exp_sel-1;
			  $sqlUpdate_exp_sel = mysql_query("UPDATE eventos SET cant_evento = '$sumar_exp_sel' WHERE id_evento = $id_dia_exp_sel ");

			$sqlUpdate_c = mysql_query("UPDATE exp_freeform_form_entries_4 
				SET entry_date = '0', edit_date = '0', status = 'open', form_field_25 = '' 
				WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 3 "); // volver el paso 3 a 0 eliminar las fechas

			$sqlUpdate_a = mysql_query("UPDATE exp_freeform_form_entries_2 
					SET form_field_12 = '4', form_field_30 = '' WHERE entry_id = $id_sol_garantia ");

			$query="DELETE FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 4";
			$resultborrar=mysql_query($query);

			$queryb="DELETE FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 5";
			$resultborrarb=mysql_query($queryb);
			}
	} // fin insp_write_proc

	public function viva_approve_fix() // funcion para generar los pasos en el form "Detalles ticket"
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$id_cliente= $TMPL->fetch_param('id_cliente');
		$acc= $TMPL->fetch_param('acc');
		$paso= $TMPL->fetch_param('paso');
		$dir= $TMPL->fetch_param('dir');
		$comentarios= $TMPL->fetch_param('comentarios');

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

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 SET status = 'closed'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

		if ($acc=="si"){

			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET form_field_27 = 'Aprobado',
			entry_date = '$entry_date',
			form_field_29 = '$comentarios'
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

			$resultado=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
			values ('1','$id_cliente','y','$ip','','open','$id_cliente','$mensaje','$id_sol_garantia','$prox_paso')");

			// caso si pasas el ticket a "Inspección pendiente" sino lo cierras
			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
			SET form_field_12 = '7'
			WHERE entry_id = $id_sol_garantia ");

		} elseif ($acc=="no"){ 

			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET form_field_27 = 'Rechazado',
			status = 'closed',
			entry_date = '$entry_date',
			form_field_29 = '$comentarios'
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

			// caso si pasas el ticket a "Inspección pendiente" sino lo cierras
			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
			SET form_field_12 = '10', status = 'closed'
			WHERE entry_id = $id_sol_garantia ");

			$resultadog=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_27) 
			values ('1','$id_cliente','y','$ip','$entry_date','open','$id_cliente','Cerrar el caso','$id_sol_garantia','10','')");

		}
	} // fin viva_approve_fix

	public function gym_assign_ejecutor() // funcion para escribir el paso de asignar ejecutor
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_cliente= $TMPL->fetch_param('id_cliente');
		$relacion_dueno_departamento= $TMPL->fetch_param('relacion_dueno_departamento');
		$fecha_atencion_ticket= $TMPL->fetch_param('fecha_atencion_ticket');
		$hora_atencion_ticket= $TMPL->fetch_param('hora_atencion_ticket');
		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$nombre_encargado_atencion= $TMPL->fetch_param('nombre_encargado_atencion');
		$celular_encargado_atencion= $TMPL->fetch_param('celular_encargado_atencion');
		$email_encargado_atencion= $TMPL->fetch_param('email_encargado_atencion');
		$admin_id= $TMPL->fetch_param('admin_id');

		$ip=$_SERVER["REMOTE_ADDR"];
		$date = date_create();
		$entry_date=date_timestamp_get($date);	

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia");

		// dividir la fecha de llegada para sumar 1 a las visitas. revisar por q graba mal
		$fecha_explode = explode("-", $fecha_atencion_ticket); 
		$dia_consulta=$fecha_explode[0];
		$mes_consulta=$fecha_explode[1];
		$anio_consulta=$fecha_explode[2];

			$result_ev=mysql_query("SELECT * FROM eventos WHERE dia_evento=$dia_consulta and mes_evento=$mes_consulta and anio_evento=$anio_consulta");
		  $obten_ev=mysql_fetch_row($result_ev);
		  $id_dia_consulta = $obten_ev[0];
		  $cant_evento = $obten_ev[7];
		  $sumar_evento=$cant_evento+1;
		  $sqlUpdate_ev = mysql_query("UPDATE eventos SET cant_evento = $sumar_evento WHERE id_evento = $id_dia_consulta ");

		if ($relacion_dueno_departamento==""){
			$dueno_atiende_ticket="si";
			} else {
			$dueno_atiende_ticket="no";
			}

		$resultado=mysql_query("insert into exp_freeform_form_entries_4 
		(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,
			form_field_20,form_field_21,form_field_22,form_field_23,form_field_24,form_field_25,form_field_26,form_field_47) 
		values ('1','$id_cliente','y','$ip','','open','$id_cliente','GyM Asignar Ejecutor','$id_sol_garantia','8'
			,'$dueno_atiende_ticket','$relacion_dueno_departamento','$nombre_encargado_atencion','$celular_encargado_atencion','$email_encargado_atencion','$fecha_atencion_ticket','$hora_atencion_ticket','$admin_id')"); 

		$resultado=mysql_query("insert into exp_freeform_form_entries_4 
		(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_47) 
		values ('1','$id_cliente','y','$ip','','open','$id_cliente','Realizar Arreglo','$id_sol_garantia','9','$admin_id')"); 

		// lectura de nro de veces de reagendado
		$result_reagenda=mysql_query("SELECT * FROM exp_freeform_form_entries_4 
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 7 ");
		$obten_reagenda=mysql_fetch_row($result_reagenda);
		$cont_reagenda = $obten_reagenda[22];
		$cont_reagenda_mas = $cont_reagenda+1;

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET status = 'closed',
		entry_date = '$entry_date',
		form_field_20 = '$dueno_atiende_ticket',
		form_field_21 = '$relacion_dueno_departamento',
		form_field_22 = '$nombre_encargado_atencion',
		form_field_23 = '$celular_encargado_atencion',
		form_field_24 = '$email_encargado_atencion',
		form_field_25 = '$fecha_atencion_ticket',
		form_field_26 = '$hora_atencion_ticket',
		form_field_32 = '$cont_reagenda_mas'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 7");

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
			SET form_field_12 = '8'
			WHERE entry_id = $id_sol_garantia ");
		
	} // fin gym_assign_ejecutor

	public function user_close() // funcion para generar los pasos en el form "Detalles ticket"
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$paso= $TMPL->fetch_param('paso');
		$id_cliente= $TMPL->fetch_param('id_cliente');
		$entry_id= $TMPL->fetch_param('entry_id');

		// echo "admin id : ".$member_id= $TMPL->fetch_param('member_id');

		$fecha_atencion_ticket=date('d-m-Y');

		$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
		$obten=mysql_fetch_row($result);
		$id_cliente = $obten[2];
		$tit_problema = $obten[15]; 
		$ip=$_SERVER["REMOTE_ADDR"];
		$date = date_create();
		$entry_date=date_timestamp_get($date);
		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");
		$result_aus=mysql_query("SELECT * FROM exp_freeform_form_entries_4 
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 9 ");
		$obten_aus=mysql_fetch_row($result_aus);
		$cliente_ausente = $obten_aus[23];
		if($cliente_ausente=="si"){
			$resultadof=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
			values ('1','$id_cliente','y','$ip','','open','$id_cliente','Cerrar el caso','$id_sol_garantia','10')");
			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET form_field_27 = 'Cerrado',
			entry_date = '$entry_date',
			status = 'closed'
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");
			$prev_paso=($id_paso-1);
			$resultc=mysql_query("SELECT * FROM exp_freeform_form_entries_4 WHERE entry_id=$prev_paso");
			$obtenc=mysql_fetch_row($resultc);
			$archivo = $obtenc[20]; //foto

			$sqlUpdate_a = mysql_query("UPDATE exp_freeform_form_entries_2 SET form_field_12 = '10' WHERE entry_id = $id_sol_garantia ");

			$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET form_field_32 = '4'
			WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 7 ");
			$sqlUpdate_c = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET status = 'closed' WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 9 ");

			$sqlUpdate_f = mysql_query("UPDATE exp_freeform_form_entries_4 
			SET status = 'closed',form_field_25 = '$fecha_atencion_ticket' WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 9 ");

		}else{ // colocar el plugin de envio de correos

		//obtener la fecha anteriormente asignada y restarle 1 por q se ha anulado esa fecha

			$result_fec=mysql_query("SELECT * FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 7 ");
			$obten_fec=mysql_fetch_row($result_fec);
			$fecha_seleccionada = $obten_fec[17];

			$fecha_exp_sel = explode("-", $fecha_seleccionada); // dividir la fecha de llegada para sumar 1 a las visitas
			$dia_exp_sel=$fecha_exp_sel[0];
			$mes_exp_sel=$fecha_exp_sel[1];
			$anio_exp_sel=$fecha_exp_sel[2];

				$result_exp_sel=mysql_query("SELECT * FROM eventos WHERE dia_evento=$dia_exp_sel and mes_evento=$mes_exp_sel and anio_evento=$anio_exp_sel");
			  $obten_exp_sel=mysql_fetch_row($result_exp_sel);
			  $id_dia_exp_sel = $obten_exp_sel[0];
			  $cant_exp_sel = $obten_exp_sel[7];
			  $sumar_exp_sel=$cant_exp_sel-1;
			  $sqlUpdate_exp_sel = mysql_query("UPDATE eventos SET cant_evento = '$sumar_exp_sel' WHERE id_evento = $id_dia_exp_sel ");

			$sqlUpdate_c = mysql_query("UPDATE exp_freeform_form_entries_4 
				SET entry_date = '0', edit_date = '0', status = 'open', form_field_25 = '' 
				WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 7 "); // volver el paso 3 a 0 eliminar las fechas

			$sqlUpdate_a = mysql_query("UPDATE exp_freeform_form_entries_2 SET form_field_12 = '7', form_field_31 = '' WHERE entry_id = $id_sol_garantia ");

			$query="DELETE FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 8";
			$resultborrar=mysql_query($query);

			$queryb="DELETE FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 9";
			$resultborrarb=mysql_query($queryb);
		}
	}	 // fin user_close

	public function viva_close() // funcion para generar los pasos en el form "Detalles ticket"
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$id_cliente= $TMPL->fetch_param('id_cliente');
		$paso= $TMPL->fetch_param('paso');
		$entry_id= $TMPL->fetch_param('entry_id');

		$ip=$_SERVER["REMOTE_ADDR"];
		$date = date_create();
		$entry_date=date_timestamp_get($date);

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET edit_date = '$entry_date' WHERE entry_id = $id_sol_garantia ");
		$sqlUpdatea = mysql_query("UPDATE exp_freeform_form_entries_2 SET status = 'closed' WHERE entry_id = $id_sol_garantia ");

		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_4 
		SET form_field_27 = 'Cerrado', entry_date = '$entry_date', status = 'closed'
		WHERE form_field_18 = $id_sol_garantia AND form_field_19 = $paso ");

		$prev_paso=($id_paso-1);

		$resultc=mysql_query("SELECT * FROM exp_freeform_form_entries_4 WHERE entry_id=$prev_paso");
		$obtenc=mysql_fetch_row($resultc);
		$archivo = $obtenc[20]; //foto

		$resultado=mysql_query("insert into exp_freeform_form_entries_4 
		(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19) 
		values ('1','$id_cliente','y','$ip','','open','$id_cliente','Completar encuesta de satisfacción','$id_sol_garantia','11')");

		// caso si pasas el ticket a "Inspección pendiente" sino lo cierras
		$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 
		SET form_field_12 = '11', status = 'closed' WHERE entry_id = $id_sol_garantia ");

		$resultadoh=mysql_query("insert into exp_freeform_form_entries_4 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_5,form_field_17,form_field_18,form_field_19,form_field_27) 
			values ('1','$id_cliente','y','$ip','$entry_date','open','$id_cliente','Completar encuesta de satisfacción','$id_sol_garantia','11','')");

	}

}
?>