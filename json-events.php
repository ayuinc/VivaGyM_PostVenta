<?php

	//$year = date('Y');
	//$month = date('m');

	$year = '2014';
	$month = '05';

	echo json_encode(array(
	
		array(
			'id' => 111,
			'title' => "2:00 pm",
			'start' => "$year-02-29",
			'color' => "#78BE20", 
			'textColor' => "black",
			'url' => "user_request_show?year=$year&month=$month&day=10&hora=2:00 pm"
		),
		
		array(
			'id' => 111,
			'title' => "3:00 pm",
			'start' => "$year-$month-09",
			'color' => "#DF8822",
			'textColor' => "black",
			'url' => "user_request_show?year=$year&month=$month&day=10&hora=3:00 pm"
		),

		array(
			'id' => 111,
			'title' => "1:00 pm",
			'start' => "$year-$month-09",
			'color' => "#78BE20",
			'textColor' => "black",
			'url' => "user_request_show?year=$year&month=$month&day=10&hora=1:00 pm"
		),
	
	));

?>
