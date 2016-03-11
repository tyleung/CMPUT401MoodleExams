<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
require_once($CFG->dirroot.'/local/memplugin/stats_class.php');

/*
Statistics
	-Columns things like - max marks for a page, rows are students, final column is total marks for the exam for the student, final line of the column is total marks per page
	-First column: Student information (ID, CCID, Name, email etc)
	 Or, all marks totaled horizontally and vertically.
	-Average score: per page/per column.
	-standard deviation: per page/per column
	-Total score: per student/per row
*/

	$year = $_GET['semester'];
	$calc = new stats();

	// Taken from http://code.stephenmorley.org/php/creating-downloadable-csv-files/
	// output headers so that the file is downloaded rather than displayed	
	header('Content-Type: text/csv; charset=utf-8');
	header('Content-Disposition: attachment; filename=Statistics_'.$year.'.csv');

	$booklet_pg_sql = $GLOBALS['DB']->get_records_sql('SELECT page_id, {mem_pages}.booklet_id, max_pages, page_num, page_marks, page_marks_max FROM {mem_booklet_data}, {mem_pages} WHERE year_semester_origin=? and {mem_pages}.booklet_id={mem_booklet_data}.booklet_id', array($year));
	
	$max_pages = current($booklet_pg_sql)->max_pages;
	$booklet_keys = array();
	
	foreach($booklet_pg_sql as $pg) {
		array_push($booklet_keys, $pg->booklet_id);
	}
	$booklet_keys = array_unique($booklet_keys);

	// Booklets array has an array which contains pages of marks.
	$booklets = array_fill_keys($booklet_keys, array_fill(1,$max_pages,0));

	// pagemarks has an array that has each mark per page.
	$pagemarks = array_fill(1,$max_pages,array());
	$pagemarks_max = array_fill(1,$max_pages,-1);

	foreach($booklet_pg_sql as $o) {
		$booklets[$o->booklet_id][$o->page_num] = $o->page_marks;
		array_push($pagemarks[$o->page_num], $o->page_marks);
		if($pagemarks_max[$o->page_num] == -1) {
			$pagemarks_max[$o->page_num] = $o->page_marks_max;
		}
	}

	// create a file pointer connected to the output stream
	$output = fopen('php://output', 'w');

	$column_title = array('Booklet ID');
	for($i=0;$i<$max_pages;$i++) {
		$str = "Page ".strval($i+1);
		array_push($column_title, $str);
	}
	array_push($column_title, 'Total Mark');

	// debug test data:
	//fputcsv($output, array($max_pages));
	//fputcsv($output, array(print_r($booklets)));
	//fputcsv($output, array(print_r($pagemarks_max)));
	//fputcsv($output, array(print_r($pagemarks)));

	fputcsv($output, $column_title);
	foreach($booklets as $k => $v) {
		$out = array($k);
		foreach($v as $mark) {
			array_push($out, $mark);
		}
		array_push($out, array_sum($v));
		fputcsv($output, $out);
	}
	
	//--at end is 1 row mean of pages and everything, 2nd row is std-dev of pages and everything
	// more specifically, use the booklet_id as row name e.g. this row is "mean" thus 5 rows in total:
	// Mean, Median, Spread, Maximum, Minimum
	
	$stats = array( "mean" => array("Mean"), "median" => array("Median"), "spread" => array("Spread"), "max" => array("Maximum"), "min" => array("Minimum"));
		
	foreach($pagemarks as $each) {
		array_push($stats["mean"], $calc->mean($each));
		array_push($stats["median"], $calc->median($each));
		array_push($stats["spread"], $calc->spread($each));
		array_push($stats["max"], $calc->max($each));
		array_push($stats["min"], $calc->min($each));
	}
	
	foreach($stats as $s) {
		fputcsv($output, $s);
	}
	
	fclose($output);
?>

