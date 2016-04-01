<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';

	$sid = intval($_GET['sid']);
	$bid = intval($_GET['booklet_id']);
	$page = intval($_GET['page']);
	
	//todo update database here!	
	$rec = $DB->get_records_sql('SELECT *
								FROM {mem_booklet_data}
								WHERE {mem_booklet_data}.booklet_id=?', array($bid));
						
	$nfodat = new stdClass();
	$nfodat->booklet_id = intval(current($rec)->booklet_id);
	//$nfodat->id = intval(current($rec)->booklet_id);
	$nfodat->student_id = $sid;
		
	var_dump($nfodat);

	$DB->update_record('mem_booklet_data', $nfodat);

	//redirect($CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page);
	
	// Test
	echo "adding student".$sid."<br>";
	echo "booklet ".$bid."<br>";
	echo "page ".$page."<br>";
	echo '<a href="'.$CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page.'">GO BACK</a>'
?>


