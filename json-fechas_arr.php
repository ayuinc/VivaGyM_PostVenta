<?php

	$id_sol_garantia=$_GET['id_sol_garantia'];
	$year = date('Y');
	$month = date('m');
	$site_url="http://162.243.222.54";

	//$year = '2014';
	//$month = '05';
	
	//$query_rub  = "select * from eventos where mes_evento=5 "; $result_rub = mysql_query($query_rub);

	//while ($row_rub = mysql_fetch_array($result_rub)) {	echo "<br> hora ".$row_rub['hora_evento'];}

	echo json_encode(array(	
	
		array(
			'id' => 111,
			'title' => "21-$month-$year",
			'start' => "$year-$month-21",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_fixing/$id_sol_garantia/21-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "28-$month-$year",
			'start' => "$year-$month-28",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_fixing/$id_sol_garantia/28-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "22-$month-$year",
			'start' => "$year-$month-22",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_fixing/$id_sol_garantia/22-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "29-$month-$year",
			'start' => "$year-$month-29",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_fixing/$id_sol_garantia/29-$month-$year"
		),

	
	));

?>
