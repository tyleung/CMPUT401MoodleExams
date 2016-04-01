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
	
	// Query for id's of rows to be updated
	$rec = $DB->get_records_sql('SELECT pdf_file_id, page_id
						FROM {mem_booklet_data}, {mem_pages}, {mem_pdf_files} 
						WHERE {mem_booklet_data}.booklet_id=?
						AND {mem_pages}.page_num=?
						AND {mem_pages}.booklet_id={mem_booklet_data}.booklet_id
						AND {mem_pdf_files}.booklet_id={mem_booklet_data}.booklet_id
						AND {mem_pdf_files}.page_num={mem_pages}.page_num', array($booklet, $page));
	
	$page_id = intval(current($rec)->page_id);
	$pdf_file_id = intval(current($rec)->pdf_file_id);
	
	// Set the fields. Couldn't get Moodle's Update records to work.
	$DB->set_field("mem_pages", "page_marks", $mark, array("page_id"=>$page_id));
	$DB->set_field("mem_pages", "page_marks_max", $max_mark, array("page_id"=>$page_id));
	$DB->set_field("mem_pdf_files", "pdf_file", $imageBlob, array("pdf_file_id"=>$pdf_file_id));	

	$t = time();
	$humanTime = date("h:i:sa",$t);
	echo "Last save was page ".$page." of booklet ".$booklet.".<br>Performed at ".$humanTime;

	//test
	//echo "<br>mark:".$mark." max mark:".$max_mark;
	//echo '<img src="data:image/png;base64,'.$base64.'"/>';

?>

