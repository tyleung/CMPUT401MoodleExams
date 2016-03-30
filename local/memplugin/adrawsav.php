<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
	
	// THIS page also should retrieve the page's score and Max score and save it to database.
	// Update if this entry already exists.
	$page = intval($_POST['page']);
	$booklet = intval($_POST['booklet']);
	$mark = intval($_POST['mark']);
	$max_mark = intval($_POST['max_mark']);
	
	$base64 = $_POST['imgsavdat'];
	$base64 = str_ireplace("data:image/png;base64,", "", $base64);
	$imageBlob = base64_decode($base64);
	
	$t = time();
	$humanTime = date("h:i:sa",$t);
	echo "Last save was page ".$page." of booklet ".$booklet.".<br>Performed at ".$humanTime;
	
	//test
	echo "<br>mark:".$mark." max mark:".$max_mark;
	echo '<img src="data:image/png;base64,'.$base64.'"/>';
	
?>

