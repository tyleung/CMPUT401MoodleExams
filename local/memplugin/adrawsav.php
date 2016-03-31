<?php

//defined('MOODLE_INTERNAL') || die();
global $PAGE, $CFG, $DB;
require_once '../../config.php';
	
	// THIS page also should retrieve the page's score and Max score and save it to database.
	// Update if this entry already exists.
	// first save score and stuff, then the png blob.
	
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
	//echo '<img src="data:image/png;base64,'.$base64.'"/>';
	
		/*
		$e1 = new stdClass();
	$e1->booklet_id=1;
	$e1->pdf_file=$imageBlob1;
	$e1->page_num=1;
		
	// Walrus image too big? is there a limit???
	$e2 = new stdClass();
	$e2->booklet_id=1;
	$e2->pdf_file=$imageBlob3;
	$e2->page_num=2;
	
	$e3 = new stdClass();
	$e3->booklet_id=2;
	$e3->pdf_file=$imageBlob2;
	$e3->page_num=1;
	
	echo "inserting<br>";
	echo "e1 id=".$DB->insert_record("mem_pdf_files", $e1, true, false)."<br>";
	//echo "e2 id=".$DB->insert_record("mem_pdf_files", $e2, true, false)."<br>";
	echo "e3 id=".$DB->insert_record("mem_pdf_files", $e3, true, false)."<br>";
	*/
	
?>

