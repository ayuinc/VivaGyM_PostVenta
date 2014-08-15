<?php
class generar_comentario
{
  public function generar_comentario()
  {
  	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;
		$member_id= $TMPL->fetch_param('member_id');
		$id_sol_garantia= $TMPL->fetch_param('id_sol_garantia');
		$texto= $TMPL->fetch_param('texto');
		$acc= $TMPL->fetch_param('acc');

		$ip=$_SERVER["REMOTE_ADDR"];
		$date = date_create();
		$entry_date=date_timestamp_get($date);

		if($acc=="no"){
			if (!empty($texto)){
			$resultadoc=mysql_query("insert into exp_freeform_form_entries_6 
			(site_id,author_id,complete,ip_address,entry_date,status,form_field_18,form_field_34,form_field_40) 
			values ('1','$member_id','y','$ip','$entry_date','open','$id_sol_garantia','$texto','$member_id')");
			}else{}
		}
		$queryb="DELETE FROM exp_freeform_form_entries_6 WHERE author_id ='' "; $resultborrarb=mysql_query($queryb);
  }
}
?>