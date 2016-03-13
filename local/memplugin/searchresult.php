<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';

	$search = $_GET['search'];

	//$booklet_pg_sql = $GLOBALS['DB']->get_records_sql('SELECT page_id, {mem_pages}.booklet_id, max_pages, page_num, page_marks, page_marks_max FROM {mem_booklet_data}, {mem_pages} WHERE year_semester_origin=? and {mem_pages}.booklet_id={mem_booklet_data}.booklet_id', array($year));
	
	print_r($search."\n");

	
	
?>

