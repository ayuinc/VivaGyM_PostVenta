<?php

	$id_sol_garantia=$_GET['id_sol_garantia'];
	$year = date('Y');
	//$month = date('m');
	$site_url="http://162.243.222.54";

	//$year = '2014';
	$month = '06';
	
	//$query_rub  = "select * from eventos where mes_evento=5 "; $result_rub = mysql_query($query_rub);

	//while ($row_rub = mysql_fetch_array($result_rub)) {	echo "<br> hora ".$row_rub['hora_evento'];}

	echo json_encode(array(	
	
		array(
			'id' => 111,
			'title' => "04-$month-$year",
			'start' => "$year-$month-04",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/main/user_request_fixing/$id_sol_garantia/04-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "11-$month-$year",
			'start' => "$year-$month-11",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/main/user_request_fixing/$id_sol_garantia/11-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "18-$month-$year",
			'start' => "$year-$month-18",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/main/user_request_fixing/$id_sol_garantia/18-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "05-$month-$year",
			'start' => "$year-$month-05",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/main/user_request_fixing/$id_sol_garantia/05-$month-$year"
		),

		array(
			'id' => 111,
			'title' => "12-$month-$year",
			'start' => "$year-$month-12",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/main/user_request_fixing/$id_sol_garantia/12-$month-$year"
		),

	
	));

?>
