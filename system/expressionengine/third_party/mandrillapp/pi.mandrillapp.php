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

	 			$subject = "Solicitud de documento";

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
												<span style='color: #898989;'>La siguiente solicitud de documento ha sido procesada a través del portal de posventa.<p>
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
												**No responder. Correo automático enviado desde el Portal de post-venta Viva GyM**<br></span>
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
									<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
												<span style='color: #898989;'>La siguiente solicitud de documento ha sido procesada a través del portal de post-venta.<p>
												<br>
												Documento solicitado:".$documento."<p>

												<br>
												**No responder. Correo automático enviado desde el Portal de post-venta Viva GyM**<br></span>
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
									<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
		 		return '<div class="container-fluid pt-35 pb-35 mh-630">
									<div class="row">
									  <div class="col-md-6 col-md-offset-3">
									    <h1>Gracias por ingresar tu solicitud de documentos</h1>
									    <p>Nos comunicaremos contigo a la brevedad.</p>
									    <p><a href="{site_url}main/user_apartment_show/{member_id}">Ir a mi departamento</a></p>    
									  </div>
									</div>
								</div>';
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
									<span style='color: #898989;'>Te informamos que nuestro equipo de post-venta se acercó a tu departamento en la fecha y dentro de los horarios programados. Lamentablemente no se pudo efectuar la atención a tu requerimiento debido a que no se encontró a la persona designada como responsable en la propiedad.<p>
									No te olvides programar una nueva fecha para atender tu requerimiento dentro de los próximos siete (07) días; de lo contrario, tu solicitud quedará sin efecto.<p></span>
									<br>
									<span style='color: #898989;'>Programa una nueva fecha para atenderte <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a>.<p>
									Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe .
									<p>Atentamente,</span>
									<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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


		if($cliente_ausente == ""){
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
									<span style='color: #898989;'>Te informamos que nuestro equipo de post-venta se acercó a tu departamento en la fecha y dentro de los horarios programados. Lamentablemente no se pudo efectuar la inspección técnica debido a que no se encontró a la persona designada como responsable en la propiedad.</span><p>
									<span style='color: #898989;'>No te olvides programar una nueva inspección dentro de los próximos siete (07) días; de lo contrario, tu solicitud quedará sin efecto.</span><p>
									<span style='color: #898989;'>Programa una nueva inspección <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a>.<p>
									<span style='color: #898989;'>Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe<p>
									Atentamente,</span>
									<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
 		
 		// leer los datos del member de acuerdo
 		$to= $TMPL->fetch_param('to');
 		$name= $TMPL->fetch_param('name');
 		$subject= "Ingreso de nueva solicitud";
 		$from= $TMPL->fetch_param('from');
 		$dias=  $TMPL->fetch_param('dias');
 		$member_id = $TMPL->fetch_param('member_id');

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
									<span style='color: #898989;'>Gracias por ingresar tu solicitud de requerimiento a través del portal de post-venta de Viva GyM. <p>
En los próximos $dias días te estaremos informando a través de nuestro portal y/o SMS si la inspección técnica procede.<p></span>
<span style='color: #898989;'>Puedes hacerle seguimiento a tu solicitud <a href='http://162.243.222.54/main/user_dashboard/".$member_id."'> aquí</a>.</span><p>
<span style='color: #898989;'>Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe.<p>
Atentamente,</span>
<span style='color: #898989;'>El equipo de post-venta de Viva GyM..</span>
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
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
									<span style='color: #898989;'>Nos es grato comunicarte que el proceso de atención a tu solicitud N° : ".$id_sol_garantia." ha concluido.</span><p>
									<span style='color: #898989;'>Podrás encontrar toda la información acerca de tu caso <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a> o ingresando a nuestro portal a través de tu sesión.</span>
 		<span style='color: #898989;'>Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe <p>
 		Atentamente,</span>
 		<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
									<span style='color: #898989;'>Gracias por culminar el proceso de atención de su solicitud N° : ".$id_sol_garantia.".
 		Adjunto encontrará el reporte del arreglo realizado por GyM.<p>
 		Aprovechamos para recordarle que en el Manual del Propietario otorgado al momento de la entrega de su departamento se especifica el correcto uso y mantenimiento preventivo que se le debe realizar a sus instalaciones a fin de evitar que estas fallen por el propio uso que provoca el desgaste natural.  Puede encontrar el Manual en nuestro portal de post-venta en línea. <a href='http://162.243.222.54/images/manual_propietario.pdf'>Manual de Usuario</a>.</span><p>
 		<span style='color: #898989;'>Es importante precisar que en caso se presentara alguna solicitud, observación y/o requerimiento adicional tras el arreglo debe llenar un nuevo reclamo en nuestro portal de post-venta en línea o comunicarte a nuestro Call Center de Atención al Cliente 206-7270. Este es el único mecanismo que garantiza la atención de su solicitud de post-venta, cualquier otra forma de solicitud no será atendida.<p>
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
						<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
		return ''	;
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

 			$subject = "Arreglo procede";

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
											<span style='color: #898989;'>En relación a tu solicitud ".$id_sol_garantia." nos es grato informarte que tu requerimiento ha sido declarado como procedente. Por favor ingresa <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a> y programa una fecha para la atención.</span><p>
							 <span style='color: #898989;'>Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe<p>
							 Atentamente,</span>
							 <span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
								<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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

 			$subject=" Arreglo no procede";
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
											<span style='color: #898989;'>En relación a tu solicitud N° ".$id_sol_garantia.". Lamentamos informarte que luego de haber efectuado la inspección correspondiente se ha determinado que tu requerimiento no es procedente debido a: ".$comentarios.".</span><p>
 			<span style='color: #898989;'>Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe .<p>
 			Atentamente,</span>
 			<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
								<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
														<span style='color: #898989;'>En relación a tu solicitud ".$id_sol_garantia.", nos es grato comunicarte que procederemos con la inspección técnica de tu departamento.<p>
														 Para proceder con la inspección, debes programar una cita a través de nuestro portal <a href='http://162.243.222.54/main/user_request_show/".$id_sol_garantia."'>aquí</a>.<p>
			Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe<p>
			Atentamente,</span>
			<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
											<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
																	<span style='color: #898989;'>En relación a tu solicitud ".$id_sol_garantia.", lamentamos informarte que tu requerimiento no procede debido a: ".$comentarios.".<p></span>
																	<span style='color: #898989;'>Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe<p>
																	Atentamente,</span>
																	<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
														<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
 		$subject= "Visita de inspección agendada";
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
																	<span style='color: #898989;'>Gracias por programar tu cita de inspección a través de nuestro portal. La inspección se realizará de acuerdo a la siguiente información:<p>
																 		Número de solicitud: ".$id_sol_garantia."<p>
																 		Fecha de Inspección: ".$fecha_atencion_ticket."<p>
																 		Horario de Inspección: 9:00 am - 2:00 pm de lunes a viernes<p>
																 		Recuerda que la persona designada como responsable debe estar presente el tiempo que dure la inspección. De lo contrario, deberás reprogramar una nueva inspección de acuerdo a la disponibilidad.<p>
																 		Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe<p>
																 		Atentamente,</span>
																 		<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
														<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
		$subject= "Visita de arreglo agendada";
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
															<span style='color: #898989;'>Gracias por haber programado la fecha para atender tu requerimiento a través de nuestro portal. Tu requerimiento será atendido de acuerdo a la siguiente información:<p>
		Número de solicitud: ".$id_sol_garantia."<p>
		Fecha programada para la atención: ".$fecha_atencion_ticket."<p>
		Horario de arreglo: 9:00 am - 2:00 pm de lunes a viernes<p>
		Recuerda que la persona designada como responsable debe estar presente el tiempo que dure la atención. De lo contrario, deberás programar una nueva fecha para atender tu requerimiento de acuerdo a la disponibilidad.<p>
		Recuerda que estamos para servirte de la mejor manera. Cualquier consulta o solicitud adicional  puedes comunicarte con nosotros llamando al 206-7270 ó a nuestro correo vivagym_atencionalcliente@gym.com.pe <p>
		Atentamente,</span>
		<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
												<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
													<span style='color: #898989;'>Gracias por registrarse en el portal de post-venta en línea de Viva GyM. Por favor tome nota de su usuario y clave para poder ingresar al portal a hacer todas sus solicitudes de post-venta. A través de nuestro portal podrá acceder al manual del propietario, reportar daños, agendar citas de inspección y arreglos, solicitar documentos, hacer reclamaciones y estar al día sobre novedades de Viva GyM.<p>
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
										<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
															<span style='color: #898989;'>Hemos registrado su reclamo.<p>
															Número de reclamo: ".$id_reclamo."<p>
															Fecha de registro: ".$fecha_date."<p>
															Reclamo: ".$mensaje."<p>
															Vamos a revisar su reclamo y nos comunicaremos con usted en un plazo maximo de 30 dias.<p>
															Quedamos como siempre a su disposición si tiene alguna consulta o solicitud adicional puede llamar a nuestro Call Center de Atención al Cliente al 206-7270.<p>
															Atentamente,</span>
																<span style='color: #898989;'>El equipo de post-venta de Viva GyM.</span>
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
												<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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

	function send_email_libro_reclamaciones_admin(){
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

		$email_propietario= $TMPL->fetch_param('email_propietario');
		$nombre_propietario= $TMPL->fetch_param('nombre_propietario');
		$apellido_propietario= $TMPL->fetch_param('apellido_propietario');
		$telefono_propietario= $TMPL->fetch_param('telefono_propietario');
		$complejo_propietario= $TMPL->fetch_param('complejo_propietario');
		$torre_propietario= $TMPL->fetch_param('torre_propietario');
		$departamento_propietario= $TMPL->fetch_param('departamento_propietario');

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
														<td align='left'><h3>Estimado/a Administrador Viva</h3>
															<span style='color: #898989;'><br>El siguiente usuario ha registrado un reclamo:<p>
															Nombre: ".$nombre_propietario."<p>
															Apellido: ".$apellido_propietario."<p>
															e-mail: ".$email_propietario."<p>
															Teléfono: ".$telefono_propietario."<p>
															Complejo: ".$complejo_propietario."<p>
															Torre: ".$torre_propietario."<p>
															Departamento: ".$departamento_propietario."<p>
															Fecha de registro: ".$fecha_date."<p>
															Número de reclamo: ".$id_reclamo."<p>
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
												<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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
												<span style='font-size: 12px;'>2014 Viva GyM Servicio de post-venta, todos los derechos reservados.</span><br>
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