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
			'title' => "23-$month-$year",
			'start' => "$year-$month-23",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_book/$id_sol_garantia/23-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "30-$month-$year",
			'start' => "$year-$month-30",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_book/$id_sol_garantia/30-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "20-$month-$year",
			'start' => "$year-$month-20",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_book/$id_sol_garantia/20-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "27-$month-$year",
			'start' => "$year-$month-27",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/index.php/main/user_request_book/$id_sol_garantia/27-$month-$year"
		),

	
	));

?>
