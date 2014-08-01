<?php
class export_excel
{
		public $return_data = "";

    public function export_excel()
    {
    global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		function downloadFile($file){
		   $file_name = $file;
		   $mime = 'application/force-download';
		   header('Pragma: public');    
		   header('Expires: 0');        
		   header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
		   header('Cache-Control: private',false);
		   header('Content-Type: '.$mime);
		   header('Content-Disposition: attachment; filename="'.basename($file_name).'"');
		   header('Content-Transfer-Encoding: binary');
		   header('Connection: close');
		   readfile($file_name);    
		   exit();
		}

		$carpeta= $TMPL->fetch_param('carpeta');
		$nombre_file= $TMPL->fetch_param('nombre_file');
		$exportacion= $TMPL->fetch_param('exportacion');
		$pri= $TMPL->fetch_param('pri');
		$cas= $TMPL->fetch_param('cas');
		$etapa= $TMPL->fetch_param('etapa');
		$tipo= $TMPL->fetch_param('tipo');
		// echo "<br> complejo: ".$complejo= $TMPL->fetch_param('complejo');
		$fecha_inicio= $TMPL->fetch_param('fecha_inicio');
		$fecha_fin= $TMPL->fetch_param('fecha_fin');

		if($exportacion=="completa"){
			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2");
			}

		if($exportacion=="busqueda"){
			if(!empty($pri)){$find_pri="and form_field_33=$pri";}
			if(!empty($cas)){$find_cas="and form_field_38=$cas";}
			if(!empty($tipo)){$find_tipo="and form_field_6 like '$tipo' ";}

			if(!empty($etapa)){
				$etapas_array = explode ('|',$etapa);

				if(!empty($etapas_array[0]))
					{$find_etapa_a="and form_field_12=$etapas_array[0]";}
				if(!empty($etapas_array[1]))
					{$find_etapa_b="or form_field_12=$etapas_array[1]";}
				if(!empty($etapas_array[2]))
					{$find_etapa_c="or form_field_12=$etapas_array[2]";}

			}

			$fecha_inicio_unix = strtotime($fecha_inicio);
			$fecha_fin_unix = strtotime($fecha_fin);
			if((!empty($fecha_inicio)) and (!empty($fecha_fin))){$find_fechas="and entry_date between $fecha_inicio_unix and $fecha_fin_unix ";}

			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 where site_id='1' $find_pri $find_cas $find_etapa_a $find_etapa_b $find_etapa_c $find_tipo $find_fechas");
			}
		$out = '';
		 
		// Get all fields names in table "mytablename" in database "mydb".
		$fields = mysql_list_fields(gym,exp_freeform_form_entries_2);
		 
		// Count the table fields and put the value into $columns.
		$columns = mysql_num_fields($fields);
		 
		// Put the name of all fields to $out.
		// for ($i = 0; $i < $columns; $i++) {
		// echo "<br>".$label=mysql_field_name($fields, $i);
		// $out .= '"'.$label.'",';
		// }
		$fecha_actual=date('d-m-Y');
		$out .="Lista de casos - Fecha de generacion del archivo: ".$fecha_actual;
		$out .="\n";
		$out .= '"Nro. de Caso","Fecha ingreso","Hora","Cliente","Tipo de problema","Etapa de solicitud","Descripcion problema","Departamento en consulta","Otro dep. afectado","Complejo","Email cliente","Telf. Fijo","Telf. Celular","Responsable Viva","Responsable GyM","Agente inspeccion","Agente arreglo"';
		$out .="\n";
		 
		// Add all values in the table to $out.
		while ($campo = mysql_fetch_array($result)) {
			$fecha=date('d-m-Y', $campo["entry_date"]);
			$hora=date('H:i a', $campo["entry_date"]);
			$etapa_nro=$campo["form_field_12"];

			switch ($etapa_nro) {
          case "1":
              $txt_etapa="Solicitud en revisión";
              break;
          case "2":
              $txt_etapa="Solicitud en revisión";
              break;
          case "3":
              $txt_etapa="Inspección pendiente";
              break;
          case "4":
              $txt_etapa="Inspección pendiente";
              break;
          case "5":
              $txt_etapa="Inspección pendiente";
              break;
          case "6":
              $txt_etapa="Informe en revisión";
              break;
          case "7":
              $txt_etapa="Arreglo pendiente";
              break;
          case "8":
              $txt_etapa="Arreglo pendiente";
              break;
          case "9":
              $txt_etapa="Arreglo pendiente";
              break;
          case "10":
              $txt_etapa="Caso cerrado";
              break;
          case "11":
              $txt_etapa="Caso cerrado";
              break;
      };

      $id_cliente=$campo["form_field_5"];
      $result_cli=mysql_query("SELECT * FROM exp_member_data where member_id='$id_cliente' ");
      $campo_cli = mysql_fetch_array($result_cli);

			$out .= utf8_decode ('"'.$campo["entry_id"].'","'.$fecha.'","'.$hora.'","'.$campo["form_field_2"].'","'.$campo["form_field_6"].'","'.$txt_etapa.'","'.$campo["form_field_15"].'","'.$campo["form_field_10"].'","'.$campo["form_field_11"].'","'.$campo["form_field_43"].'","'.$campo["form_field_3"].'","'.$campo_cli["m_field_id_5"].'","'.$campo_cli["m_field_id_6"].'","'.$campo["form_field_14"].'","'.$campo["form_field_13"].'","'.$campo["form_field_30"].'","'.$campo["form_field_31"].'"');
			$out .="\n";
			// for ($i = 0; $i < $columns; $i++) {
			// $out .='"'.$l["$i"].'",';
			// }
		}
		//echo "<br>".$out; 
		$file_name=$carpeta.$nombre_file.$exportacion."_".$fecha_actual.".csv";
		$nombre_archivo=$nombre_file.$exportacion."_".$fecha_actual.".csv";
		$this->return_data = "$file_name";
		if ( ! write_file($file_name, $out)){echo "<br>Fallo en la generación del archivo.";}
		else{downloadFile("/var/www/vivagymposventa/html/reportes/".$nombre_archivo);}
    }
}
?>