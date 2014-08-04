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

	function send_email_request_doc(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
		$email_propietario= $TMPL->fetch_param('email_propietario');
		$email_alt= $TMPL->fetch_param('email_alt');
		$nombre_propietario= $TMPL->fetch_param('nombre_propietario');
		$apellido_propietario= $TMPL->fetch_param('apellido_propietario');
		$telefono_propietario= $TMPL->fetch_param('telefono_propietario');
		$complejo_propietario= $TMPL->fetch_param('complejo_propietario');
		$torre_propietario= $TMPL->fetch_param('torre_propietario');
		$departamento_propietario= $TMPL->fetch_param('departamento_propietario');
		$documento =  $TMPL->fetch_param('documento');
		$to= $TMPL->fetch_param('to');
		$name= $TMPL->fetch_param('name');
		$from= "admin@gym.com";
		$tipo= $TMPL->fetch_param('tipo');
		//$text = $TMPL->tagdata;

		if ($tipo == "admin"){

	 			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
	 			$obten=mysql_fetch_row($result);
	 			$tit_problema = $obten[15];

	 			$subject = "Solicitud de documento.";

				$text = "<!doctype html>
				<html>
				  <head>
				    <meta charset='utf-8' />
				    <title>Viva GyM</title>
				  </head>
					<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
						<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
							<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
								<td><p><br></p>
								</td>
							</tr>
							<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
								<td>

									<div style='background-color: #ffffff;'>
										<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
												</td>
											</tr>
											<tr>
											<td align='left'><h3>Estimado/a Administrador Viva</h3>
												<span>La siguiente solicitud de documento ha sido procesada a través del portal de posventa.<p>
												<br>
												Documento solicitado:".$documento."<p>
												Datos del propietario:<p>
												Nombre: ".$nombre_propietario."<p>
												Apellido: ".$apellido_propietario."<p>
												e-mail: ".$email_propietario."<p>
												e-mail alternativo: ".$email_alt."<p>
												Teléfono: ".$telefono_propietario."<p>
												Complejo: ".$complejo_propietario."<p>
												Torre: ".$torre_propietario."<p>
												Departamento: ".$departamento_propietario."<p>
												<br>
												**No responder. Correo automático enviado desde el Portal de posventa Viva GyM**<br></span>
												<p>
											</td>
										</tr>
										<tr>
												<td><br></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td align='center'><p></p>
									<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
									<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
								</td>
							</tr>
						</table>
					</body>
				</html>";
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
	 		else if($tipo == "cli"){

	 			$subject="Solicitud de documento.";
	 			$text = "<!doctype html>
				<html>
				  <head>
				    <meta charset='utf-8' />
				    <title>Viva GyM</title>
				  </head>
					<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
						<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
							<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
								<td><p><br></p>
								</td>
							</tr>
							<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
								<td>

									<div style='background-color: #ffffff;'>
										<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
												</td>
											</tr>
											<tr>
											<td align='left'><h3>Estimado/a ".$name."</h3>
												<span>La siguiente solicitud de documento ha sido procesada a través del portal de posventa.<p>
												<br>
												Documento solicitado:".$documento."<p>

												<br>
												**No responder. Correo automático enviado desde el Portal de posventa Viva GyM**<br></span>
												<p>
											</td>
										</tr>
										<tr>
												<td><br></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td align='center'><p></p>
									<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
									<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
								</td>
							</tr>
						</table>
					</body>
				</html>";

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


	function send_email_user_close(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= "No se pudo realizar el arreglo";
 		$from= $TMPL->fetch_param('from');
 		$id_sol_garantia =  $TMPL->fetch_param('id_sol_garantia');
 		$result_aus=mysql_query("SELECT * FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 9 ");http://162.243.222.54/main/user_dashboard/51
		$obten_aus=mysql_fetch_row($result_aus);
		$cliente_ausente = $obten_aus[23];
 		//$text = $TMPL->tagdata;
 		if($cliente_ausente == "no"){

		$text = "<!doctype html>
	<html>
	  <head>
	    <meta charset='utf-8' />
	    <title>Viva GyM</title>
	  </head>
		<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
			<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
				<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
					<td><p><br></p>
					</td>
				</tr>
				<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
					<td>

						<div style='background-color: #ffffff;'>
							<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
								<tr>
									<td><br></td>
								</tr>
								<tr>
									<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
									</td>
								</tr>
								<tr>
								<td align='left'><h3>Estimado/a ".$name."</h3>
									<span>Le informamos que el agente de su caso ".$id_sol_garantia." ha visitado su departamento pero no pudo realizar el arreglo por no encontrarse nadie en el departamento.<p>
									<br>
									Por esta razón usted debe ingresar nuevamente a nuestra plataforma de servicio posventa y agendar nuevamente su visita de arreglo <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a>.<p>
									<br>
									Muchas gracias,<p>
									<br>
									Atentamente</span>
									<p>
								</td>
							</tr>
							<tr>
									<td><br></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td align='center'><p></p>
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
						<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
					</td>
				</tr>
			</table>
		</body>
	</html>";
 		
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
		else{
			return "";
		}
	}
	function send_email_write_proc(){
		
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= "No se pudo realizar la inspección";
 		$from= $TMPL->fetch_param('from');
 		$id_sol_garantia =  $TMPL->fetch_param('id_sol_garantia');
 		$result_aus=mysql_query("SELECT * FROM exp_freeform_form_entries_4 WHERE form_field_18 = $id_sol_garantia AND form_field_19 = 5 ");
		$obten_aus=mysql_fetch_row($result_aus);
		$cliente_ausente = $obten_aus[23];

		if($cliente_ausente == "no"){
 		//$text = $TMPL->tagdata;	 		

	 		$text = "<!doctype html>
	<html>
	  <head>
	    <meta charset='utf-8' />
	    <title>Viva GyM</title>
	  </head>
		<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
			<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
				<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
					<td><p><br></p>
					</td>
				</tr>
				<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
					<td>

						<div style='background-color: #ffffff;'>
							<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
								<tr>
									<td><br></td>
								</tr>
								<tr>
									<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
									</td>
								</tr>
								<tr>
								<td align='left'><h3>Estimado/a ".$name."</h3>
									<span>Le informamos que la persona responsable por realizar la inspeccion de su caso ".$id_sol_garantia." ha visitado su departamento pero no pudo realizar la inspección por no encontrarse nadie en el departamento.<p>
									<br>
									Por esta razón usted debe ingresar nuevamente a nuestra plataforma de servicio posventa y agendar nuevamente su visita de inspección <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a>.<p>
									<br>
									Muchas gracias,<p>
									Atentamente</span>
									<p>
								</td>
							</tr>
							<tr>
									<td><br></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td align='center'><p></p>
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
						<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
					</td>
				</tr>
			</table>
		</body>
	</html>";

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
		else{
			return "";
		}
	}
	function send_email_confirm_solicitud(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= "Ingreso de nueva solicitud.";
 		$from= $TMPL->fetch_param('from');
 		$dias=  $TMPL->fetch_param('dias');
 		$member_id = $TMPL->fetch_param('member_id');
 		//$text = $TMPL->tagdata;

 		$text = "<!doctype html>
	<html>
	  <head>
	    <meta charset='utf-8' />
	    <title>Viva GyM</title>
	  </head>
		<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
			<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
				<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
					<td><p><br></p>
					</td>
				</tr>
				<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
					<td>

						<div style='background-color: #ffffff;'>
							<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
								<tr>
									<td><br></td>
								</tr>
								<tr>
									<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
									</td>
								</tr>
								<tr>
								<td align='left'><h3>Estimado/a ".$name."</h3>
									<span>Gracias por enviar su solicitud de requerimientos por el portal de posventa en línea de Viva GyM. <p>
En los próximos $dias días le estaremos informando por correo electrónico y mediante el portal de post-venta si la inspección por un técnico de nuestro equipo procede. Recuerde que en la mayoría de los casos, la vigencia de la garantía es necesaria para que los arreglos procedan. <p>
Usted puede hacerle seguimiento a su solicitud <a href='http://162.243.222.54/main/user_dashboard/".$member_id."'> aquí</a>.<p>
Esperamos servirle de la mejor manera durante este proceso. No olvide revisar el Manual del Propietario para cuidar de su departamento todos los días.<p>
Atentamente</span>
									<p>
								</td>
							</tr>
							<tr>
									<td><br></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td align='center'><p></p>
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
						<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
					</td>
				</tr>
			</table>
		</body>
	</html>";

 		
 		$cuerpo=$header_mail.$text.$footer_mail;
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

	function send_email_cerrar_caso(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');

 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= "Cierre de Caso";
 		$from= $TMPL->fetch_param('from');
 		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
 		//$text = $TMPL->tagdata;

 		$text = "<!doctype html>
	<html>
	  <head>
	    <meta charset='utf-8' />
	    <title>Viva GyM</title>
	  </head>
		<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
			<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
				<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
					<td><p><br></p>
					</td>
				</tr>
				<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
					<td>

						<div style='background-color: #ffffff;'>
							<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
								<tr>
									<td><br></td>
								</tr>
								<tr>
									<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
									</td>
								</tr>
								<tr>
								<td align='left'><h3>Estimado/a ".$name."</h3>
									<span>Gracias por culminar el proceso de atención de su solicitud número: ".$id_sol_garantia.".
 		Adjunto encontrará el reporte del arreglo realizado por GyM.<p>
 		Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. Link a Manual.<p>
 		Es importante precisar que en caso se presentara alguna solicitud, observación y/o requerimiento adicional tras el arreglo debe llenar un nuevo reclamo en nuestro portal de post-venta en línea o comunicarte a nuestro Call Center de Atención al Cliente 206-7270. Este es el único mecanismo que garantiza la atención de su solicitud de post-venta, cualquier otra forma de solicitud no será atendida.<p>
 		Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional.<p>
 		Llene nuestra encuesta de satisfaccion en el siguiente link: <a href=''>Encuesta</a>
 		Atentamente</span>
									<p>
								</td>
							</tr>
							<tr>
									<td><br></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td align='center'><p></p>
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
						<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
					</td>
				</tr>
			</table>
		</body>
	</html>";
 		
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
 		        '	name' => 'main',
 		        'content' => 'Hi *|FIRSTNAME|* *|LASTNAME|*, thanks for signing up.'),
 		    array(
 		        'name' => 'footer',
 		        'content' => 'Copyright 2012.')

 		);
		$mandrill->messages->sendTemplate($template_name, $template_content, $message);
		return '<div class="container-fluid pt-35 pb-35 mh-630">
	<div class="row">
	  <div class="col-md-6 col-md-offset-3">

	  		<h1>Ha cerrado la solicitud Nro. <?php echo $id_sol_garantia; ?></h1>
	  		<h2>Nuevo metodo</h2>

		  <p>Puedes hacerle seguimiento a las solicitudes en la sección de “Panel de control”</p>
		  <p><a href="{site_url}main/admin_dashboard">Ir a Panel de control</a></p>	  
	  </div>
	</div>
</div>
';
	}
	
	function send_email_viva_cierre(){ //dos veces
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

 		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
 		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
 		
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= 'Cierre de Caso';
 		$from= $TMPL->fetch_param('from');
 		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
 		//$text = $TMPL->tagdata;

 		$text = "<!doctype html>
	<html>
	  <head>
	    <meta charset='utf-8' />
	    <title>Viva GyM</title>
	  </head>
		<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
			<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
				<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
					<td><p><br></p>
					</td>
				</tr>
				<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
					<td>

						<div style='background-color: #ffffff;'>
							<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
								<tr>
									<td><br></td>
								</tr>
								<tr>
									<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
									</td>
								</tr>
								<tr>
								<td align='left'><h3>Estimado/a ".$name."</h3>
									<span>Gracias por culminar el proceso de atención de su solicitud número: ".$id_sol_garantia.".
 		Adjunto encontrará el reporte del arreglo realizado por GyM.<p>
 		Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. Link a Manual.<p>
 		Es importante precisar que en caso se presentara alguna solicitud, observación y/o requerimiento adicional tras el arreglo debe llenar un nuevo reclamo en nuestro portal de post-venta en línea o comunicarte a nuestro Call Center de Atención al Cliente 206-7270. Este es el único mecanismo que garantiza la atención de su solicitud de post-venta, cualquier otra forma de solicitud no será atendida.<p>
 		Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional.<p>
 		Atentamente</span>
									<p>
								</td>
							</tr>
							<tr>
									<td><br></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td align='center'><p></p>
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
						<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
					</td>
				</tr>
			</table>
		</body>
	</html>";
 		
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
		return '
				<div class="row">
				  <div class="col-md-6 col-md-offset-3">

				  		<h1>¡Listo! El caso de la solicitud #.'.$id_sol_garantia.' ha sido CERRADO</h1>

					  <p>Puedes hacerle seguimiento a las solicitudes en la sección de “Panel de control”</p>
					  <p><a href="{site_url}main/admin_dashboard">Ir a Panel de control</a></p>	  
				  </div>
				</div>'	;
	}

	function send_email_viva_approve_fix(){ //no llega
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

 			$subject = " Arreglo procede.";

			$text = "<!doctype html>
			<html>
			  <head>
			    <meta charset='utf-8' />
			    <title>Viva GyM</title>
			  </head>
				<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
					<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
						<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
							<td><p><br></p>
							</td>
						</tr>
						<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
							<td>

								<div style='background-color: #ffffff;'>
									<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
										<tr>
											<td><br></td>
										</tr>
										<tr>
											<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
											</td>
										</tr>
										<tr>
										<td align='left'><h3>Estimado/a ".$name."</h3>
											<span>Tras analizar su solicitud de requerimiento número ".$id_sol_garantia." le confirmamos que se ha determinado que el arreglo reportado: ".$tit_problema.", procede. Para que se acerque un especialista a arreglar el daño debe agendar una cita ingresando a nuestro portal de post-venta en línea <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a>.<p>
							 Es importante precisar que en caso se presentara alguna solicitud, observación y/o requerimiento adicional tras el arreglo debe llenar un nuevo reclamo en nuestro portal de post-venta en línea o comunicarte a nuestro Call Center de Atención al Cliente 206-7270. Este es el único mecanismo que garantiza la atención de su solicitud de post-venta, cualquier otra forma de solicitud no será atendida.<p>
							 Atentamente</span>
											<p>
										</td>
									</tr>
									<tr>
											<td><br></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td align='center'><p></p>
								<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
								<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
							</td>
						</tr>
					</table>
				</body>
			</html>";
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

 			$subject=" Arreglo no procede.";
 			$text = "<!doctype html>
			<html>
			  <head>
			    <meta charset='utf-8' />
			    <title>Viva GyM</title>
			  </head>
				<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
					<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
						<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
							<td><p><br></p>
							</td>
						</tr>
						<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
							<td>

								<div style='background-color: #ffffff;'>
									<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
										<tr>
											<td><br></td>
										</tr>
										<tr>
											<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
											</td>
										</tr>
										<tr>
										<td align='left'><h3>Estimado/a ".$name."</h3>
											<span>Tras analizar su solicitud de requerimiento número ".$id_sol_garantia." le informamos que los especialistas de GyM han determinado que su arreglo no procede. La razón de esta decisión es: ".$comentarios.".<p>
 			Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. Link a Manual.<p>
 			Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
 			Atentamente</span>
											<p>
										</td>
									</tr>
									<tr>
											<td><br></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td align='center'><p></p>
								<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
								<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
							</td>
						</tr>
					</table>
				</body>
			</html>";

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

 		if (($acc=="si-gar") or ($acc=="si-exc")){

 			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
 			$obten=mysql_fetch_row($result);
 			$tit_problema = $obten[15];

 			$subject = "Inspección Procede.";

			$text = "<!doctype html>
						<html>
						  <head>
						    <meta charset='utf-8' />
						    <title>Viva GyM</title>
						  </head>
							<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
								<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
									<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
										<td><p><br></p>
										</td>
									</tr>
									<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
										<td>

											<div style='background-color: #ffffff;'>
												<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
													<tr>
														<td><br></td>
													</tr>
													<tr>
														<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
														</td>
													</tr>
													<tr>
													<td align='left'><h3>Estimado/a ".$name."</h3>
														<span>Tras analizar su solicitud de requerimiento número ".$id_sol_garantia.", le confirmamos que se realizará la inspección del daño reportado 
				".$tit_problema." a través del sistema de post-venta en línea de Viva GyM. Para proceder con la inspección debe agendar su cita en nuestro portal de posventa en línea. Por favor agende su visita <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a>. Ahí deberá seleccionar un horario en el que con seguridad usted o alguien más se encontrará en su hogar para que reciba al especialista que inspeccionará el problema.<p>
			Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
			Atentamente</span>
														<p>
													</td>
												</tr>
												<tr>
														<td><br></td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
									<tr>
										<td align='center'><p></p>
											<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
											<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
										</td>
									</tr>
								</table>
							</body>
						</html>";
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
 		else if(($acc=="no-fmant") or ($acc=="no-fgar")){
 			$result=mysql_query("SELECT * FROM exp_freeform_form_entries_2 WHERE entry_id=$id_sol_garantia");
 			$obten=mysql_fetch_row($result);
 			$tit_problema = $obten[15];

 			$subject="Inspección no procede.";

			$text = "<!doctype html>
									<html>
									  <head>
									    <meta charset='utf-8' />
									    <title>Viva GyM</title>
									  </head>
										<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
											<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
												<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
													<td><p><br></p>
													</td>
												</tr>
												<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
													<td>

														<div style='background-color: #ffffff;'>
															<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
																<tr>
																	<td><br></td>
																</tr>
																<tr>
																	<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
																	</td>
																</tr>
																<tr>
																<td align='left'><h3>Estimado/a ".$name."</h3>
																	<span>Tras analizar su solicitud de requerimiento número ".$id_sol_garantia.", le confirmamos que se ha determinado que su requerimiento es improcedente debido a: ".$comentarios.".<p>
				Por esta razón no corresponde enviar a un especialista a verificar el problema.
			Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. Link a Manual.<p>
			Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
			Atentamente</span>
																	<p>
																</td>
															</tr>
															<tr>
																	<td><br></td>
																</tr>
															</table>
														</div>
													</td>
												</tr>
												<tr>
													<td align='center'><p></p>
														<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
														<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
													</td>
												</tr>
											</table>
										</body>
									</html>";

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

 		$text = "<!doctype html>
									<html>
									  <head>
									    <meta charset='utf-8' />
									    <title>Viva GyM</title>
									  </head>
										<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
											<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
												<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
													<td><p><br></p>
													</td>
												</tr>
												<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
													<td>

														<div style='background-color: #ffffff;'>
															<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
																<tr>
																	<td><br></td>
																</tr>
																<tr>
																	<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
																	</td>
																</tr>
																<tr>
																<td align='left'><h3>Estimado/a ".$name."</h3>
																	<span>Muchas gracias por agendar su cita de inspección en el  el portal de post-venta en línea de Viva GyM. Su inspección se realizará según la siguiente información:<p>
																 		Número de solicitud: ".$id_sol_garantia."<p>
																 		Fecha de Inspección: ".$fecha_atencion_ticket."<p>
																 		Horario de Inspección: 9:00 am - 2:00 pm de lunes a viernes<p>
																 		Recuerde que usted o alguien responsable de su departamento debe estar presente en el momento de la inspección.  En caso no pueda estar presente deberá reagendar su cita en el portal de post-venta de Viva GyM con al menos 24 horas de anticipación a la misma. Si tiene una emergencia el mismo día de la cita y no podrá estar presente por favor comuníquese al 206-7270.<p>
																 		Recuerde que si reagenda su cita deberá pasar nuevamente por todo el proceso. Tiene, además, un máximo de dos oportunidades para reagendar su cita.<p>
																 		Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
																 		Atentamente</span>
																	<p>
																</td>
															</tr>
															<tr>
																	<td><br></td>
																</tr>
															</table>
														</div>
													</td>
												</tr>
												<tr>
													<td align='center'><p></p>
														<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
														<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
													</td>
												</tr>
											</table>
										</body>
									</html>";
 		
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
		$subject= "Visita de arreglo agendada.";
		$from= $TMPL->fetch_param('from');
		$id_sol_garantia = $TMPL->fetch_param('id_sol_garantia');
		$fecha_atencion_ticket = $TMPL->fetch_param('fecha_atencion_ticket');
		//$text = $TMPL->tagdata;

		$text = "<!doctype html>
							<html>
							  <head>
							    <meta charset='utf-8' />
							    <title>Viva GyM</title>
							  </head>
								<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
									<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
										<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
											<td><p><br></p>
											</td>
										</tr>
										<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
											<td>

												<div style='background-color: #ffffff;'>
													<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
														<tr>
															<td><br></td>
														</tr>
														<tr>
															<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
															</td>
														</tr>
														<tr>
														<td align='left'><h3>Estimado/a ".$name."</h3>
															<span>Muchas gracias por agendar su arreglo en el portal de post-venta en línea de Viva GyM. Su arreglo se realizará según la siguiente información:<p>
		Número de solicitud: ".$id_sol_garantia."<p>
		Fecha de arreglo: ".$fecha_atencion_ticket."<p>
		Horario de arreglo: 9:00 am - 2:00 pm de lunes a viernes<p>
		Recuerde que usted o alguien responsable de su departamento debe estar presente en el momento de el arreglo.  En caso no pueda estar presente deberá reagendar su cita en el portal de post-venta de Viva GyM con al menos 24 horas de anticipación a la misma. Si tiene una emergencia el mismo día de la cita y no podrá estar presente por favor comuníquese al 206-7270.
		Recuerde que si reagenda su cita deberá pasar nuevamente por todo el proceso. Tiene, además, un máximo de dos oportunidades para reagendar su cita. <p>
		Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
		Atentamente</span>
															<p>
														</td>
													</tr>
													<tr>
															<td><br></td>
														</tr>
													</table>
												</div>
											</td>
										</tr>
										<tr>
											<td align='center'><p></p>
												<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
												<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
											</td>
										</tr>
									</table>
								</body>
							</html>";

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

	function send_email_bienvenida(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
		
		$to= $TMPL->fetch_param('to');
		$name= $TMPL->fetch_param('name');
		$subject= $TMPL->fetch_param('subject');
		$from= $TMPL->fetch_param('from');
		//$text = $TMPL->tagdata;

		$text = "<!doctype html>
					<html>
					  <head>
					    <meta charset='utf-8' />
					    <title>Viva GyM</title>
					  </head>
						<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
							<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
								<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
									<td><p><br></p>
									</td>
								</tr>
								<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
									<td>

										<div style='background-color: #ffffff;'>
											<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
												<tr>
													<td><br></td>
												</tr>
												<tr>
													<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
													</td>
												</tr>
												<tr>
												<td align='left'><h3>Estimado/a ".$name."</h3>
													<span>Gracias por registrarse en el portal de post-venta en línea de Viva GyM. Por favor tome nota de su usuario y clave para poder ingresar al portal a hacer todas sus solicitudes de post-venta. A través de nuestro portal podrá acceder al manual del propietario, reportar daños, agendar citas de inspección y arreglos, solicitar documentos, hacer reclamaciones y estar al día sobre novedades de Viva GyM.<p>
				Esperamos servirle de la mejor manera.<p>
				Atentamente</span>
													<p>
												</td>
											</tr>
											<tr>
													<td><br></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<tr>
									<td align='center'><p></p>
										<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
										<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
									</td>
								</tr>
							</table>
						</body>
					</html>";

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

	function send_email_libro_reclamaciones(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
		
		$to= $TMPL->fetch_param('to');
		$name= $TMPL->fetch_param('name');
		$subject= $TMPL->fetch_param('subject');
		$from= $TMPL->fetch_param('from');
		$member_id= $TMPL->fetch_param('member_id');

		$rs = mysql_query("SELECT MAX(entry_id) AS id FROM exp_freeform_form_entries_9 where form_field_5 = $member_id");
			if ($row = mysql_fetch_row($rs)) { $id_reclamo = $row[0]; }

		$result_ev=mysql_query("SELECT * FROM exp_freeform_form_entries_9 WHERE entry_id=$id_reclamo and form_field_5 = $member_id");
	  $obten_ev=mysql_fetch_row($result_ev);
	  $fecha_registro = $obten_ev[5];
	  $fecha_date=gmdate("d-m-Y", $fecha_registro);
	  $mensaje = $obten_ev[9];

		//$text = $TMPL->tagdata;

		$text = "<!doctype html>
							<html>
							  <head>
							    <meta charset='utf-8' />
							    <title>Viva GyM</title>
							  </head>
								<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
									<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
										<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
											<td><p><br></p>
											</td>
										</tr>
										<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
											<td>

												<div style='background-color: #ffffff;'>
													<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
														<tr>
															<td><br></td>
														</tr>
														<tr>
															<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
															</td>
														</tr>
														<tr>
														<td align='left'><h3>Estimado/a ".$name."</h3>
															<span>Hemos registrado su reclamo.<p>
															Número de reclamo: ".$id_reclamo."<p>
															Fecha de registro: ".$fecha_date."<p>
															Reclamo: ".$mensaje."<p>
															Vamos a revisar su reclamo y nos comunicaremos con usted en un plazo maximo de 30 dias.<p>
															Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
															Atentamente</span>
															<p>
														</td>
													</tr>
													<tr>
															<td><br></td>
														</tr>
													</table>
												</div>
											</td>
										</tr>
										<tr>
											<td align='center'><p></p>
												<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
												<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
											</td>
										</tr>
									</table>
								</body>
							</html>";

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

	function send_recordatorio(){
		global $TMPL;
		$this->EE =& get_instance(); // EEv2 syntax
		$TMPL = $this->EE->TMPL;

		require_once 'mailchimp-mandrill-api-php/src/Mandrill.php'; 
		$mandrill = new Mandrill('Svqgcw575OLrORu2WiD09g');
		
		// $to= "jcmoron82@gmail.com";
		// $name= "Julio";
		// $subject= "Recordatorio|";
		// $from= "admin@gym.com";

		$to= $TMPL->fetch_param('to');
		$name= $TMPL->fetch_param('name');
		$subject= $TMPL->fetch_param('subject');
		$from= $TMPL->fetch_param('from');

		$id_reclamo= $TMPL->fetch_param('id_reclamo');
		$fecha_date= $TMPL->fetch_param('fecha_date');
		$proceso= $TMPL->fetch_param('proceso');

		switch ($proceso) {
            case "3": $txt_proceso="Inspección";break;
            case "7": $txt_proceso="Arreglo";break;
            }

	  $text = "<!doctype html>
							<html>
							  <head>
							    <meta charset='utf-8' />
							    <title>Viva GyM</title>
							  </head>
								<body style='margin: 0px; background-color: #f1f1f1; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; color: #898989;' bgcolor='#f1f1f1'>
									<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
										<tr style='background-color: #f1f1f1;' bgcolor='#f1f1f1'>
											<td><p><br></p>
											</td>
										</tr>
										<tr style='background-color: #ffffff;' bgcolor='#ffffff'>
											<td>

												<div style='background-color: #ffffff;'>
													<table align='center' width='90%' style='width:90%; margin-left: auto; margin-right: auto;'>
														<tr>
															<td><br></td>
														</tr>
														<tr>
															<td align='right'><img src='http://162.243.222.54/images/logo-viva.png' style='width:100px; height: auto;'>
															</td>
														</tr>
														<tr>
														<td align='left'><span style='color: #898989;'><h3>Estimado/a ".$name."</h3></span>
															<span style='color: #898989;'>Le recordamos que tiene una visita pendiente de: ".$txt_proceso."</span><p>
															<span style='color: #898989;'>Número de caso: ".$id_reclamo."</span><p>
															<span style='color: #898989;'>Fecha de visita: ".$fecha_date."</span><p>
															<span style='color: #898989;'>Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.</span><p>
															<span style='color: #898989;'>Atentamente</span>
															<p>
														</td>
													</tr>
													<tr>
															<td><br></td>
														</tr>
													</table>
												</div>
											</td>
										</tr>
										<tr>
											<td align='center'><p></p>
												<span style='font-size: 12px;'>2014 Viva GyM Servicio de posventa, todos los derechos reservados.</span><br>
												<img src='http://162.243.222.54/images/logo-plomo.png' style='width:80px; height: auto;'>
											</td>
										</tr>
									</table>
								</body>
							</html>";

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
		return "exito";

	}

}
// END CLASS