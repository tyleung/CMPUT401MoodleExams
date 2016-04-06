<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
	$course = intval($_GET['course_id']);
	$sid = intval($_GET['sid']);
	$bid = intval($_GET['booklet_id']);
	$page = intval($_GET['page']);
	
	$hash = $DB->get_record_sql('SELECT {mem_booklet_data}.booklet_id, student_id, exam_hash
							FROM {mem_booklet_data}
							WHERE {mem_booklet_data}.course_id=?
							AND {mem_booklet_data}.booklet_id=?
							', array($course, $booklet));
	
	$DB->set_field("mem_booklet_data", "student_id", $sid, array("booklet_id"=>$bid, "exam_hash"=>$hash, "course_id"=>$course));

	redirect($CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page.'&course_id='.$course);
	
	// Test
	//echo "adding student".$sid."<br>";
	//echo "booklet ".$bid."<br>";
	//echo "page ".$page."<br>";
	//echo '<a href="'.$CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page.'">GO BACK</a>'
?>


