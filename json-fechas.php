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
			'title' => "03-$month-$year",
			'start' => "$year-$month-03",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/main/user_request_book/$id_sol_garantia/03-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "10-$month-$year",
			'start' => "$year-$month-10",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/main/user_request_book/$id_sol_garantia/10-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "17-$month-$year",
			'start' => "$year-$month-17",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "$site_url/main/user_request_book/$id_sol_garantia/17-$month-$year"
		),
		
		array(
			'id' => 111,
			'title' => "06-$month-$year",
			'start' => "$year-$month-06",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/main/user_request_book/$id_sol_garantia/06-$month-$year"
		),

		array(
			'id' => 111,
			'title' => "13-$month-$year",
			'start' => "$year-$month-13",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "$site_url/main/user_request_book/$id_sol_garantia/13-$month-$year"
		),

	
	));

?>