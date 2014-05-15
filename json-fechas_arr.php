<?php

	$id_sol_garantia=$_GET['id_sol_garantia'];
	$year = date('Y');
	$month = date('m');

	//$year = '2014';
	//$month = '05';
	
	//$query_rub  = "select * from eventos where mes_evento=5 "; $result_rub = mysql_query($query_rub);

	//while ($row_rub = mysql_fetch_array($result_rub)) {	echo "<br> hora ".$row_rub['hora_evento'];}

	echo json_encode(array(	
	
		array(
			'id' => 111,
			'title' => "2:00 pm",
			'start' => "$year-$month-14",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "user_request_fixing?dia_sel=14-$month-$year&hora=2:00 pm&id_sol_garantia=$id_sol_garantia"
		),
		
		array(
			'id' => 111,
			'title' => "3:00 pm",
			'start' => "$year-$month-14",
			'color' => "#DF8822",
			'textColor' => "black",
			'url' => "user_request_fixing?dia_sel=14-$month-$year&hora=2:00pm&id_sol_garantia=$id_sol_garantia"
		),

		array(
			'id' => 111,
			'title' => "1:00 pm",
			'start' => "$year-$month-14",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "user_request_fixing?dia_sel=14-$month-$year&hora=2:00pm&id_sol_garantia=$id_sol_garantia"
		),
		
		array(
			'id' => 111,
			'title' => "2:00 pm",
			'start' => "$year-$month-22",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "user_request_fixing?dia_sel=22-$month-$year&hora=2:00pm&id_sol_garantia=$id_sol_garantia"
		),
		
		array(
			'id' => 111,
			'title' => "3:00 pm",
			'start' => "$year-$month-22",
			'color' => "#DF8822",
			'textColor' => "black",
			'url' => "user_request_fixing?dia_sel=22-$month-$year&hora=2:00pm&id_sol_garantia=$id_sol_garantia"
		),

		array(
			'id' => 111,
			'title' => "1:00 pm",
			'start' => "$year-$month-22",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "user_request_fixing?dia_sel=22-$month-$year&hora=2:00pm&id_sol_garantia=$id_sol_garantia"
		),

	
	));

?>
