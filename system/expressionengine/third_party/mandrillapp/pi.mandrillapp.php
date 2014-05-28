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
 		$dias=  $TMPL->fetch_param('dias');
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

}
// END CLASS