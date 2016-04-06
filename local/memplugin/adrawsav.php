<?php

//defined('MOODLE_INTERNAL') || die();
global $PAGE, $CFG, $DB;
require_once '../../config.php';
	
	// THIS page also should retrieve the page's score and Max score and save it to database.
	// Update if this entry already exists.
	// first save score and stuff, then the png blob.

	$course = intval($_POST['course_id']);
	$page = intval($_POST['page']);
	$booklet = intval($_POST['booklet']);
	$mark = intval($_POST['mark']);
	$max_mark = intval($_POST['max_mark']);
	
	$base64 = $_POST['imgsavdat'];
	$base64 = str_ireplace("data:image/png;base64,", "", $base64);
	$imageBlob = base64_decode($base64);
	
	// get hash
	$recBk = $DB->get_record_sql('SELECT {mem_booklet_data}.booklet_id, student_id, exam_hash
							FROM {mem_booklet_data}
							WHERE {mem_booklet_data}.course_id=?
							AND {mem_booklet_data}.booklet_id=?
							', array($course, $booklet));
	
	$recPg = $DB->get_record_sql('SELECT page_id, page_marks, page_marks_max
							FROM {mem_pages}
							WHERE {mem_pages}.page_num=?
							AND {mem_pages}.exam_hash=?
							AND {mem_pages}.booklet_id=?
							', array($page, $recBk->exam_hash, $booklet));
							
	$recPdf = $DB->get_record_sql('SELECT pdf_file_id, pdf_file
							FROM {mem_pdf_files}
							WHERE {mem_pdf_files}.page_num=?
							AND {mem_pdf_files}.exam_hash=?
							AND {mem_pdf_files}.booklet_id=?
							', array($page, $recBk->exam_hash, $booklet));
		
	$page_id = intval($recPg->page_id);
	$hash = intval($recBk->exam_hash);
	$pdf_file_id = intval($recPdf->pdf_file_id);
	
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
	
	// Update is_marked field
	$DB->set_field('mem_pages', 'is_marked', '1', array('page_id'=>$page_id));

?>
