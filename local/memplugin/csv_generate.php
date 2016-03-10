<?php
require_once '../../config.php';

/*
Statistics
	-Columns things like - max marks for a page, rows are students, final column is total marks for the exam for the student, final line of the column is total marks per page
	-First column: Student information (ID, CCID, Name, email etc)
	 Or, all marks totaled horizontally and vertically.
	-Average score: per page/per column.
	-standard deviation: per page/per column
	-Total score: per student/per row
*/

	// Taken from http://code.stephenmorley.org/php/creating-downloadable-csv-files/
	// output headers so that the file is downloaded rather than displayed
	header('Content-Type: text/csv; charset=utf-8');
	header('Content-Disposition: attachment; filename=Statistics_'.$_GET['semester'].'.csv');

	// create a file pointer connected to the output stream
	$output = fopen('php://output', 'w');

	// output the column headings
	fputcsv($output, array('Student_ID', 'Page1', 'Page2', 'Total Mark'));
	fputcsv($output, array('1234567', '5', '10', '76'));
	//--at end is 1 row mean of pages and everything, 2nd row is std-dev of pages and everything
	fputcsv($output, array('N/A', '20', '15', '100'));
	fputcsv($output, array('N/A', '2.0', '3.2', '16.2'));
	fclose($output);
?>
