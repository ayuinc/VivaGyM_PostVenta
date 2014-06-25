<?php
class generar_fechas_admin
{
    public function generar_fechas_admin()
    {
    	
		$dia_a="lun"; $dia_b="mar"; $dia_c="jue"; $dia_d="vie";

    $year = date('Y');
		$site_url="$"."site_url";
		$month = date('m');
		$dia_actual = date('d');
		$month_mas = $month+1;
		$month_masmas = $month+2;
		$month_men = $month-1;
		$id_sol_garantia="$"."id_sol_garantia";
		$string_a = '<?php

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
		  
		  $query_long  = "SELECT * FROM eventos where mes_evento=$month_men or mes_evento=$month or mes_evento=$month_mas";
		  $result_long = mysql_query($query_long);
		  while ($proy_long = mysql_fetch_array($result_long)) { 
		    $id_evento=$proy_long['id_evento'];
		    $dia_evento=$proy_long['dia_evento'];
		    $mes_evento=$proy_long['mes_evento'];
		    $anio_evento=$proy_long['anio_evento'];
		    $nom_evento=$proy_long['nom_evento'];
		    //$cant_evento=$proy_long['cant_evento'];
		    
		      $y++;
		      if(($nom_evento=="$dia_a") or ($nom_evento=="$dia_b") or ($nom_evento=="$dia_c") or ($nom_evento=="$dia_d")){
		      	  $fecha_consulta=$dia_evento."-".$mes_evento."-".$anio_evento;
		        	$result_cont=mysql_query("SELECT * FROM exp_freeform_form_entries_4 WHERE form_field_25 = '$fecha_consulta' ");
							$cant_evento = mysql_num_rows($result_cont);
							$obten_reagenda=mysql_fetch_row($result_cont);
							$cont_reagenda = $obten_cont[0];
		          $libros[$y]="
		            array(
		                'id' => $id_evento,
		                'title' => ".'"'.$dia_evento."-".$mes_evento."-".$anio_evento." / #: ".$cant_evento.'"'.",
		                'start' => ".'"'.$anio_evento."-".$mes_evento."-".$dia_evento.'"'.",
		                'color' => ".'"'.$color.'"'.", 
		                'textColor' => ".'"'.$color_txt.'"'.",
		                'url' => ".'"'."$site_url/main/admin_detalle_dia/$dia_evento-$mes_evento-$anio_evento".'"'."
		              ),";
	        }
		  };
		$string_con=$string_a.$libros[1].$libros[2].$libros[3].$libros[4].$libros[5].$libros[6].$libros[7].$libros[8].$libros[9].$libros[10].$libros[11].$libros[12].$libros[13].$libros[14].$libros[15].$libros[16].$libros[17].$libros[18].$libros[19].$libros[20].$libros[21].$libros[22].$libros[23].$libros[24].$libros[25].$libros[26].$libros[27].$libros[28].$libros[29].$libros[30].$libros[31].$libros[32].$libros[33].$libros[34].$libros[35].$libros[36].$libros[37].$libros[38].$libros[39].$libros[40].$libros[41].$libros[42].$libros[43].$libros[44].$libros[45].$libros[46].$libros[47].$libros[48].$libros[49].$libros[50].$libros[51].$libros[52].$libros[53].$libros[54].$libros[55].$libros[56].$libros[57].$libros[58].$libros[59].$libros[60].$libros[61].$libros[62].$libros[63].$libros[64].$libros[65].$libros[66].$libros[67].$libros[68].$libros[69].$libros[70].$libros[71].$libros[72].$libros[73].$libros[74].$libros[75].$libros[76].$libros[77].$libros[78].$libros[79].$libros[80].$libros[81].$libros[82].$libros[83].$libros[84].$libros[85].$libros[86].$libros[87].$libros[88].$libros[89].$libros[90].$libros[91].$libros[92].$string_b;
		if ( ! write_file('./fullcalendar/new_fechas_admin.php', $string_con)){}else{}
    }
}
?>