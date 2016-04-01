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
	
	$rec = $DB->get_records_sql('SELECT pdf_file_id, page_id
						FROM {mem_booklet_data}, {mem_pages}, {mem_pdf_files} 
						WHERE {mem_booklet_data}.booklet_id=?
						AND {mem_pages}.page_num=?
						AND {mem_pages}.booklet_id={mem_booklet_data}.booklet_id
						AND {mem_pdf_files}.booklet_id={mem_booklet_data}.booklet_id
						AND {mem_pdf_files}.page_num={mem_pages}.page_num', array($booklet, $page));
	var_dump($rec);

	$nfodat = new stdClass();
	$nfodat->page_id = current($rec)->page_id;
	//$nfodat->id = current($rec)->page_id;
	$nfodat->page_marks = $mark;
	$nfodat->page_marks_max = $max_mark;

	$idat = new stdClass();
	$idat->pdf_file_id = current($rec)->pdf_file_id;
	//$idat->id = current($rec)->pdf_file_id;
	$idat->pdf_file = $imageBlob;
	
	// DB update function doesnt work. it errors or something!	
	$DB->update_record('mem_pages', $nfodat);
	$DB->update_record('mem_pdf_files', $idat);

	$t = time();
	$humanTime = date("h:i:sa",$t);
	echo "Last save was page ".$page." of booklet ".$booklet.".<br>Performed at ".$humanTime;

	//test
	echo "<br>mark:".$mark." max mark:".$max_mark;
	//echo '<img src="data:image/png;base64,'.$base64.'"/>';

echo "hi";
?>

