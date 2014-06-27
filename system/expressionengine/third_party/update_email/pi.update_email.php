<?php
class update_email
{
    public function update_email()
    {
    	global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;
		$member_id= $TMPL->fetch_param('member_id');
		$result=mysql_query("SELECT * FROM exp_member_data WHERE member_id=$member_id ");
	  $obten=mysql_fetch_row($result);
	  $email_propietario = $obten[18];
	  $sqlUpdate = mysql_query("UPDATE exp_members SET email = '$email_propietario' WHERE member_id=$member_id ");
	  //if($sqlUpdate){echo "<br>exito";}
    }
}
?>