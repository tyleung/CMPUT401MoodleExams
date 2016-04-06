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

	/** year holds the semester of the course, e.g. 2014 FALL */
	$year = $_GET['semester'];
	
	/** course holds the course-id. */
	$course = $_GET['course'];
	
	/** initializes class whoese methods relate to statistical calculations */
	$calc = new stats();

	/** Taken from http://code.stephenmorley.org/php/creating-downloadable-csv-files/
	output headers so that the file is downloaded rather than displayed. */
	header('Content-Type: text/csv; charset=utf-8');
	header('Content-Disposition: attachment; filename=Statistics_'.$year.'.csv');

	/** SQL query to retrieve all pages data and relevant booklet data. */
	$booklet_pg_sql = $GLOBALS['DB']->get_records_sql('SELECT page_id, {mem_pages}.booklet_id, max_pages, page_num, page_marks, page_marks_max, student_id FROM {mem_booklet_data}, {mem_pages} WHERE course_id=? and year_semester_origin=? and {mem_pages}.booklet_id={mem_booklet_data}.booklet_id and {mem_pages}.exam_hash={mem_booklet_data}.exam_hash', array($course, $year));
	
	$max_pages = current($booklet_pg_sql)->max_pages;
	$booklet_keys = array();
	
	foreach($booklet_pg_sql as $pg) {
		array_push($booklet_keys, $pg->booklet_id);
	}
	$booklet_keys = array_unique($booklet_keys);
	
	// not efficient, better way to do it but no time for deadline anymore
	$sids = array();
	foreach($booklet_keys as $k) {
		foreach($booklet_pg_sql as $pg) {
			if($pg->booklet_id == $k) {
				array_push($sids, $pg->student_id);
			}
		}
	}

	/** Booklets array has an array which contains pages of marks. */
	$booklets = array_fill_keys($booklet_keys, array_fill(1,$max_pages,0));

	/** Pagemarks has an array that has each mark per page. */
	$pagemarks = array_fill(1,$max_pages,array());
	$pagemarks_max = array_fill(1,$max_pages,-1);

	/** Populate the booklets with an associated array of page_numbers containing the page marks
	 and then if not already defined, assigned the maximum score that page can achieve. */
	foreach($booklet_pg_sql as $o) {
		$booklets[$o->booklet_id][$o->page_num] = $o->page_marks;
		array_push($pagemarks[$o->page_num], $o->page_marks);
		if($pagemarks_max[$o->page_num] == -1) {
			$pagemarks_max[$o->page_num] = $o->page_marks_max;
		}
	}

	/** Create a file pointer connected to the output stream. */
	$output = fopen('php://output', 'w');

	/** Names of the Columns of the CSV, the first row to be put into the CSV */
	$column_title = array('Student ID','Booklet ID',);
	for($i=0;$i<$max_pages;$i++) {
		$str = "Page ".strval($i+1);
		array_push($column_title, $str);
	}
	array_push($column_title, 'Total Mark');

	$totalScore = array();

	fputcsv($output, $column_title);
	
	/** Output into CSV all the booklet pages' marks, and total. */
	foreach($booklets as $k => $v) {
		$out = array(current($sids),$k);
		
		foreach($v as $mark) {
			array_push($out, $mark);
		}
		$sumPgMark = array_sum($v);
		array_push($out, $sumPgMark);
		array_push($totalScore, $sumPgMark);
		fputcsv($output, $out);
		next($sids);
	}
	
	/**Statistics array. At end is 1 row mean of pages and everything, 2nd row is std-dev of pages and everything
	 more specifically, use the booklet_id as row name e.g. this row is "mean" thus 5 rows in total:
	 Mean, Median, Spread, Maximum, Minimum. */
	$stats = array( "mean" => array("","Mean"), "median" => array("","Median"), "spread" => array("","Spread"), "max" => array("","Maximum"), "min" => array("","Minimum"));
	
	/** puts into the respective statistics arrays the total page marks. */
	foreach($pagemarks as $each) {
		array_push($stats["mean"], $calc->mean($each));
		array_push($stats["median"], $calc->median($each));
		array_push($stats["spread"], $calc->spread($each));
		array_push($stats["max"], $calc->max($each));
		array_push($stats["min"], $calc->min($each));
	}
	
	/** Stats for total marks of entire class appended at the very end of the statistics arrays. */
	array_push($stats["mean"], $calc->mean($totalScore));
	array_push($stats["median"], $calc->median($totalScore));
	array_push($stats["spread"], $calc->spread($totalScore));
	array_push($stats["max"], $calc->max($totalScore));
	array_push($stats["min"], $calc->min($totalScore));
	
	/** actually write the statistics into the CSV. */
	foreach($stats as $s) {
		fputcsv($output, $s);
	}
	
	fclose($output);
?>

