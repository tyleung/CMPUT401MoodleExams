<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
	
	// THIS page also should retrieve the page's score and Max score and save it to database.
	// Update if this entry already exists.
	$page = intval($_POST['page']);
	$booklet = intval($_POST['booklet']);
	//fetch from database:
	$mark = 0;
	$max_mark = 0;

	//$imageBlob = databasestuff;
	
	//TODO: fetch page from database and then load it into canvas.
	echo "Page loaded.<br><br>";
	//test
	echo "Booklet:".$booklet." Page:".$page;
	echo "<br>mark:".$mark." max mark:".$max_mark;
	//echo '<img src="data:image/png;base64,'.$base64.'"/>';
	
?>

