<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';

	$sid = intval($_GET['sid']);
	$bid = intval($_GET['booklet_id']);
	$page = intval($_GET['page']);
	
	$DB->set_field("mem_booklet_data", "student_id", $sid, array("booklet_id"=>$bid));

	redirect($CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page);
	
	// Test
	//echo "adding student".$sid."<br>";
	//echo "booklet ".$bid."<br>";
	//echo "page ".$page."<br>";
	//echo '<a href="'.$CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page.'">GO BACK</a>'
?>


