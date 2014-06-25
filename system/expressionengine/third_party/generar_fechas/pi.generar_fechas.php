<?php
class generar_fechas
{
    public function generar_fechas()
    {
    	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;
		$tipo_cal= $TMPL->fetch_param('tipo_cal');
		if ($tipo_cal=="insp"){$dia_a="mar"; $dia_b="jue"; $user_book="user_request_book";}
		if ($tipo_cal=="arr"){$dia_a="lun"; $dia_b="vie"; $user_book="user_request_fixing";}

    $year = date('Y');
		$site_url="$"."site_url";
		$month = date('m');
		$dia_actual = date('d');
		$month_mas = $month+1;
		$id_sol_garantia="$"."id_sol_garantia";
		$string_a = '<?php
		  $id_sol_garantia=$_GET["id_sol_garantia"];

		  echo json_encode(array('
		    ;
		$string_b = '
		  
		  ));
		  ?>
		  ';
		  $y=1;
		  $libros = array();
		  $color="#78BE20";
		  $color_txt="black";
		  $result=mysql_query("SELECT * FROM eventos WHERE dia_evento=$dia_actual and mes_evento=$month ");
		  $obten=mysql_fetch_row($result);
		  $id_dia_actual = $obten[0];
		  $query_long  = "SELECT * FROM eventos where mes_evento=$month or mes_evento=$month_mas ";
		  $result_long = mysql_query($query_long);
		  while ($proy_long = mysql_fetch_array($result_long)) { 
		    $id_evento=$proy_long['id_evento'];
		    $dia_evento=$proy_long['dia_evento'];
		    $mes_evento=$proy_long['mes_evento'];
		    $anio_evento=$proy_long['anio_evento'];
		    $nom_evento=$proy_long['nom_evento'];
		    $cant_evento=$proy_long['cant_evento'];
		      $y++;
		      if($id_evento>$id_dia_actual){
			      if(($nom_evento=="$dia_a") or ($nom_evento=="$dia_b")){
			        if ($cant_evento<15){
			          $libros[$y]="
			            array(
			                'id' => $id_evento,
			                'title' => ".'"'.$dia_evento."-".$mes_evento."-".$anio_evento.'"'.",
			                'start' => ".'"'.$anio_evento."-".$mes_evento."-".$dia_evento.'"'.",
			                'color' => ".'"'.$color.'"'.", 
			                'textColor' => ".'"'.$color_txt.'"'.",
			                'url' => ".'"'."$site_url/main/$user_book/$id_sol_garantia/$dia_evento-$mes_evento-$anio_evento".'"'."
			              ),";
			        }
		        }
		      }
		  };
		$string_con=$string_a.$libros[1].$libros[2].$libros[3].$libros[4].$libros[5].$libros[6].$libros[7].$libros[8].$libros[9].$libros[10].$libros[11].$libros[12].$libros[13].$libros[14].$libros[15].$libros[16].$libros[17].$libros[18].$libros[19].$libros[20].$libros[21].$libros[22].$libros[23].$libros[24].$libros[25].$libros[26].$libros[27].$libros[28].$libros[29].$libros[30].$libros[31].$libros[32].$libros[33].$libros[34].$libros[35].$libros[36].$libros[37].$libros[38].$libros[39].$libros[40].$libros[41].$libros[42].$libros[43].$libros[44].$libros[45].$libros[46].$libros[47].$libros[48].$libros[49].$libros[50].$libros[51].$libros[52].$libros[53].$libros[54].$libros[55].$libros[56].$libros[57].$libros[58].$libros[59].$libros[60].$libros[61].$libros[62].$string_b;
		if ($tipo_cal=="insp"){if ( ! write_file('./fullcalendar/new_fechas_insp.php', $string_con)){}else{}}
		if ($tipo_cal=="arr"){if ( ! write_file('./fullcalendar/new_fechas_arr.php', $string_con)){}else{}}
    }
}
?>