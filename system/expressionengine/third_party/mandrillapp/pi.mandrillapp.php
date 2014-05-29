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
		
	function send_email_confirm_solicitud(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= $TMPL->fetch_param('subject');
 		$from= $TMPL->fetch_param('from');
 		$dias=  $TMPL->fetch_param('dias');
 		//$text = $TMPL->tagdata;
 		$text = 'Estimado/a '.$name.'<p>
Gracias por enviar su solicitud de requerimientos por el portal de post-venta en línea de Viva GyM. <p>
En los próximos '.$dias.' días le estaremos informando por correo electrónico y mediante el portal de post-venta si la inspección por un técnico de nuestro equipo procede. Recuerde que en la mayoría de los casos, la vigencia de la garantía es necesaria para que los arreglos procedan. <p>
Adjunto encontrará el reporte de su reclamo para su referencia (esto podría ser un pantallaso del reclamo que llenaron en línea). <p>
Esperamos servirle de la mejor manera durante este proceso. No olvide revisar el Manual del Propietario para cuidar de su departamento todos los días.<p>
Atentamente';
 		
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
	
	function send_email_viva_close(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= 'Reporte de Arreglo y Cierre de Caso - Viva GyM';
 		$from= $TMPL->fetch_param('from');
 		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
 		//$text = $TMPL->tagdata;
 		$text = 'Estimado/a '.$name.'<p>
	Gracias por culminar el proceso de atención de su solicitud número: '.$id_sol_garantia.'.
Adjunto encontrará el reporte del arreglo realizado por GyM.<p>
Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. Link a Manual.<p>
Es importante precisar que en caso se presentara alguna solicitud, observación y/o requerimiento adicional tras el arreglo debe llenar un nuevo reclamo en nuestro portal de post-venta en línea o comunicarte a nuestro Call Center de Atención al Cliente 206-7270. Este es el único mecanismo que garantiza la atención de su solicitud de post-venta, cualquier otra forma de solicitud no será atendida.<p>
Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional.<p>
Atentamente';
 		
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

	function send_email_viva_approve_fix(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$from= $TMPL->fetch_param('from');
 		$acc= $TMPL->fetch_param('acc');
 		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
 		$comentarios = $TMPL->fetch_param('comentarios');

 		if ($acc == "si"){

 			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
 			$obten=mysql_fetch_row($result);
 			$tit_problema = $obten[15];

 			$subject = " Arreglo Procede - Viva GyM";
 			$text = 'Estimado/a '.$name.'<p>
					 Tras analizar su solicitud de requerimiento número '.$id_sol_garantia.' le confirmamos que se ha determinado que el arreglo reportado: '.$tit_problema.', procede. Para que se acerque un especialista a arreglar el daño debe agendar una cita ingresando a nuestro portal de post-venta en línea aquí. Link a Calendario.<p>
					 Es importante precisar que en caso se presentara alguna solicitud, observación y/o requerimiento adicional tras el arreglo debe llenar un nuevo reclamo en nuestro portal de post-venta en línea o comunicarte a nuestro Call Center de Atención al Cliente 206-7270. Este es el único mecanismo que garantiza la atención de su solicitud de post-venta, cualquier otra forma de solicitud no será atendida.<p>
					 Atentamente';
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
 		else if($acc == "no"){

 			$subject=" Arreglo no Procede - Viva GyM";
 			$text='Estimado/a '.$name.'<p>
 				Tras analizar su solicitud de requerimiento número '.$id_sol_garantia.' le informamos que los especialistas de GyM han determinado que su arreglo no procede. La razón de esta decisión es: '.$comentarios.'.<p>
 			Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. Link a Manual.<p>
 			Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
 			Atentamente';
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
	}

	function send_email_viva_approve_sol(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$from= $TMPL->fetch_param('from');
 		$acc= $TMPL->fetch_param('acc');
 		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
 		$comentarios = $TMPL->fetch_param('comentarios');

 		if ($acc == "si"){

 			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
 			$obten=mysql_fetch_row($result);
 			$tit_problema = $obten[15];

 			$subject = "Procede Inspección Viva GyM";
 			$text = 'Estimado/a '.$name.'.<p>
	Tras analizar su solicitud de requerimiento número '.$id_sol_garantia.', le confirmamos que se realizará la inspección del daño reportado 
	'.$tit_problema.' a través del sistema de post-venta en línea de Viva GyM. Para proceder con la inspección debe agendar su cita en nuestro portal de post-venta en línea. Por favor siga en siguiente link para acceder al calendario. Link Calendario. Ahí deberá seleccionar un horario en el que con seguridad usted o alguien más se encontrará en su hogar para que reciba al especialista que inspeccionará el problema.<p>
Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
Atentamente';
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
 		else if($acc == "no"){
 			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
 			$obten=mysql_fetch_row($result);
 			$tit_problema = $obten[15];

 			$subject=" No Procede Inspección Viva GyM";
 			$text='Estimado/a '.$name.'<p>
	Tras analizar su solicitud de requerimiento número '.$id_sol_garantia.', le confirmamos que se ha determinado que su requerimiento es improcedente debido a: '.$comentarios.'.<p>
	Por esta razón no corresponde enviar a un especialista a verificar el problema.
Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. Link a Manual.<p>
Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
Atentamente';
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
	}

	function send_email_guardar_3er_paso(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= $TMPL->fetch_param('subject');
 		$from= $TMPL->fetch_param('from');
 		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
 		$fecha_atencion_ticket = $TMPL->fetch_param('fecha_atencion_ticket');
 		//$text = $TMPL->tagdata;
 		$text = 'Estimado/a '.$name.'<p>
 			Muchas gracias por agendar su cita de inspección en el  el portal de post-venta en línea de Viva GyM. Su inspección se realizará según la siguiente información:<p>
 		Número de solicitud: '.$id_sol_garantia.'<p>
 		Fecha de Inspección: '.$fecha_atencion_ticket.'<p>
 		Horario de Inspección: 9:00 am - 2:00 pm de lunes a viernes<p>
 		Recuerde que usted o alguien responsable de su departamento debe estar presente en el momento de la inspección.  En caso no pueda estar presente deberá reagendar su cita en el portal de post-venta de Viva GyM con al menos 24 horas de anticipación a la misma. Si tiene una emergencia el mismo día de la cita y no podrá estar presente por favor comuníquese al 206-7270.<p>
 		Recuerde que si reagenda su cita deberá pasar nuevamente por todo el proceso. Tiene, además, un máximo de dos oportunidades para reagendar su cita.<p>
 		Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
 		Atentamente';
 		
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

	function send_email_guardar_4to_paso(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
		
		$to= $TMPL->fetch_param('to');
		$name= $TMPL->fetch_param('name');
		$subject= $TMPL->fetch_param('subject');
		$from= $TMPL->fetch_param('from');
		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
		$fecha_atencion_ticket = $TMPL->fetch_param('fecha_atencion_ticket');
		//$text = $TMPL->tagdata;
		$text = 'Estimado/a '.$name.'<p>
				Muchas gracias por agendar su arreglo en el  el portal de post-venta en línea de Viva GyM. Su inspección se realizará según la siguiente información:<p>
				Número de solicitud: '.$id_sol_garantia.'<p>
				Fecha de Inspección: '.$fecha_atencion_ticket.'<p>
				Horario de Inspección: 9:00 am - 2:00 pm de lunes a viernes<p>
				Recuerde que usted o alguien responsable de su departamento debe estar presente en el momento de la inspección.  En caso no pueda estar presente deberá reagendar su cita en el portal de post-venta de Viva GyM con al menos 24 horas de anticipación a la misma. Si tiene una emergencia el mismo día de la cita y no podrá estar presente por favor comuníquese al 206-7270.
				Recuerde que si reagenda su cita deberá pasar nuevamente por todo el proceso. Tiene, además, un máximo de dos oportunidades para reagendar su cita. <p>
				Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
				Atentamente VIVA_GYM<p>'; 	
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

}
// END CLASS