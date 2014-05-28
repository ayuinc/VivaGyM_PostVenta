<?php 

$plugin_info = array(
						'pi_name'			=> 'Mandrillapp',
						'pi_version'		=> '1.0',
						'pi_author'			=> 'Gianfranco Montoya',
						'pi_author_url'		=> 'http://ayuinc.com',
						'pi_description'	=> 'Envia mensajes usando el API de Mandrillapp - https://mandrillapp.com',
						'pi_usage'			=> Mandrillapp::usage()
					);

/**
 * Send_email class
 *
 * @package			ExpressionEngine
 * @category		Plugin
 * @author			Gianfranco Montoya
 * @copyright		Copyright (c) 2014 Engaging.net
 * @link			--
 */

class Mandrillapp {

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
		
	function send_email_test(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= $TMPL->fetch_param('subject');
 		$from= $TMPL->fetch_param('from');
 		$text = $TMPL->tagdata;
 		/*'html' => '<p>FELICIDADES!!!</p><p>Ganaste el tema'.$topic.' ve a nuestro menú de temas y sigue participando</p>',*/
 		$message = array(
 		    'subject' => $subject,
 		    'from_email' => $from,
 		    'html' => $text,
 		    'to' => array(array('email' => $to, 'name' => $name)),
 		    'merge_vars' => array(array(
	 		        'rcpt' => 'recipient1@domain.com',
	 		        'vars' =>
	 		        array(
	 		            array(
	 		                'name' => 'FIRSTNAME',
	 		                'content' => 'Recipient 1 first name'),
	 		            array(
	 		                'name' => 'LASTNAME',
	 		                'content' => 'Last name')
	 		    ))));

 		$template_name = 'test';

 		$template_content = array(
 		    array(
 		        'name' => 'main',
 		        'content' => 'Hi *|FIRSTNAME|* *|LASTNAME|*, thanks for signing up.'),
 		    array(
 		        'name' => 'footer',
 		        'content' => 'Copyright 2012.')

 		);
		$mandrill->messages->sendTemplate($template_name, $template_content, $message);
		return "";
	}

	function send_email_notification_alltopic(){
 		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Y86YbFBQBDYap7qxJbpmvA');
 		
 		$to= $TMPL->fetch_param('to');
 		$member_id= $TMPL->fetch_param('member_id');
 		$name= $TMPL->fetch_param('name');
 		$subject= $TMPL->fetch_param('subject');
 		$from= $TMPL->fetch_param('from');
 		$text = $TMPL->tagdata;
 		/*
 		'html' => '<p>FELICIDADES!!!</p><p>Terminaste todos los temas y ahora tendrás mas opciones de ganar el premio.</p>',*/
        $verify = ee()->db->get_where('exp_member_data', array('member_id' => $member_id,
        	'm_field_id_9'=> '1',
        	'm_field_id_10'=> '1',
        	'm_field_id_11'=> '1',
        	'm_field_id_13'=> '1',
        	'm_field_id_14'=> '1',
        	'm_field_id_16'=> '1',
        	));
        if ($verify->result() == null){
        	return '</div>
				</div>
				<div class="row seccion">
					<div class="small-6 medium-4 large-4 large-centered columns">				
						<a href="{site_url}categorias" class="button expand">Juega de Nuevo</a>
					</div>
				</div>';
        }
        else{
	 		$message = array(
	 		    'subject' => $subject,
	 		    'from_email' => $from,
	 		    'html' => $text,
	 		    'to' => array(array('email' => $to, 'name' => $name)),
	 		    'merge_vars' => array(array(
		 		        'rcpt' => 'recipient1@domain.com',
		 		        'vars' =>
		 		        array(
		 		            array(
		 		                'name' => 'FIRSTNAME',
		 		                'content' => 'Recipient 1 first name'),
		 		            array(
		 		                'name' => 'LASTNAME',
		 		                'content' => 'Last name')
		 		    ))));

	 		$template_name = 'test';

	 		$template_content = array(
	 		    array(
	 		        'name' => 'main',
	 		        'content' => 'Hi *|FIRSTNAME|* *|LASTNAME|*, thanks for signing up.'),
	 		    array(
	 		        'name' => 'footer',
	 		        'content' => 'Copyright 2012.')

	 		);
			$mandrill->messages->sendTemplate($template_name, $template_content, $message);
			return '</div>
				</div>';
		}
	}

	
}
// END CLASS