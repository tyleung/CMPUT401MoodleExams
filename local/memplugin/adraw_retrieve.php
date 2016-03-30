<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
	// So basically we have a edited database:
	// Stores each page of the pdf onto database as pdf BLOB OR as just IMAGE blobs and give them back the PDFS as needed??
	// CHANGE the database pdf pages to have another attribute = page numbers. We gonna make it so it accepts and stores image blobs.
	// make so it stores the page and comments seperately. (enables easier erasing with clearrect easier).
	
	// THIS page also should retrieve the page's score and Max score and save it to database.
	// Update if this entry already exists.
	$page = intval($_POST['page']);
	$booklet = intval($_POST['booklet']);
	$mark = intval($_POST['mark']);
	$max_mark = intval($_POST['max_mark']);

	// should get from database, the page and booklet id, student number, full name??, and the blob.
	//$imageBlob = databasestuff;
	
	//TODO: fetch page from database and then load it into canvas.
	
	//test
	echo "Booklet:".$booklet." Page:".$page;
	echo "mark:".$mark." max mark:".$max_mark;
	//echo '<img src="data:image/png;base64,'.$base64.'"/>';
	
?>

