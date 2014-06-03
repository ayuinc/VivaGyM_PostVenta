<?php 

$plugin_info = array(
						'pi_name'			=> 'Getuser',
						'pi_version'		=> '1.0',
						'pi_author'			=> 'Gianfranco Montoya',
						'pi_author_url'		=> 'http://ayuinc.com',
						'pi_description'	=> 'Permite obtener un Usuario usando un variable post como member_id',
						'pi_usage'			=> Getuser::usage()
					);

/**
 * Send_email class
 *
 * @package			ExpressionEngine
 * @category		Plugin
 * @author			Gianfranco Montoya
 * @copyright		Copyright (c) 2014 ayuinc.com
 * @link			--
 */

class Getuser {

	function usage()
	{
		ob_start(); 
		?>
			See the documentation at http://www.engaging.net/docs/send-email
		<?php
		$buffer = ob_get_contents();
		ob_end_clean();
		return $buffer;
	}

	public function getuser(){
		$id_sol_garantia = ee()->TMPL->fetch_param('id_sol_garantia');
		$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
		$obten=mysql_fetch_row($result);
		$id_cliente = $obten[2];

		return $id_cliente;	
	}

	public function getscreenname(){
		$id_sol_garantia = ee()->TMPL->fetch_param('id_sol_garantia');
		$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
		$obten=mysql_fetch_row($result);
		$id_cliente = $obten[2];
		$result_email=mysql_query("SELECT * FROM exp_members WHERE member_id=$id_cliente");
		$obten_email=mysql_fetch_row($result_email);
		$screen_name = $obten_email[3];

		return $screen_name ;	
	}
	
	public function getemail(){
		$id_sol_garantia = ee()->TMPL->fetch_param('id_sol_garantia');
		$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
		$obten=mysql_fetch_row($result);
		$id_cliente = $obten[2];
		$result_email=mysql_query("SELECT * FROM exp_members WHERE member_id=$id_cliente");
		$obten_email=mysql_fetch_row($result_email);
		$dir = $obten_email[9];

		return $dir;	
	}
}
// END CLASS