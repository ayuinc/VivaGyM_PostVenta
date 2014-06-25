<?php
class actividad_sol
{
  public function actividad_sol()
  {

	  $query_long  = "SELECT * FROM exp_freeform_form_entries_2";
	  $result_long = mysql_query($query_long);
	  while ($proy_long = mysql_fetch_array($result_long)) { 
	    $tiempo_ingreso=$proy_long['entry_date'];
	    $tiempo_edicion=$proy_long['edit_date'];
	    $id_sol_garantia=$proy_long['entry_id'];

      $resta=($tiempo_ingreso-$tiempo_edicion); 
      if ($resta>=345600){ 
      	$sqlUpdate = mysql_query("UPDATE exp_freeform_form_entries_2 SET form_field_38 = '1' WHERE entry_id = $id_sol_garantia ");	
      } else 
      { $sqlUpdateb = mysql_query("UPDATE exp_freeform_form_entries_2 SET form_field_38 = '0' WHERE entry_id = $id_sol_garantia ");} 
	  };
  }
}
?>