<?php

//defined('MOODLE_INTERNAL') || die();
global $PAGE, $CFG, $DB;
require_once '../../config.php';
	
	$page = intval($_POST['page']);
	$booklet = intval($_POST['booklet']);

	$rec = $DB->get_records_sql('SELECT pdf_file_id, {mem_pdf_files}.booklet_id, {mem_pdf_files}.page_num, 
							pdf_file, page_marks, page_marks_max, student_id 
							FROM {mem_booklet_data}, {mem_pages}, {mem_pdf_files} 
							WHERE {mem_booklet_data}.booklet_id=?
							AND {mem_pages}.page_num=?
							AND {mem_pages}.booklet_id={mem_booklet_data}.booklet_id
							AND {mem_pdf_files}.booklet_id={mem_booklet_data}.booklet_id
							AND {mem_pdf_files}.page_num={mem_pages}.page_num', array($booklet, $page));

	$mark = current($rec)->page_marks;
	$max_mark = current($rec)->page_marks_max;
	$student = current($rec)->student_id;
	$imageBlob = current($rec)->pdf_file;
	
	// Have to disable saving when the img_tmp is empty or size <10px?

	
	echo '<script id="id_retrieve_scr" type="text/javascript">

			var img = document.getElementById("id_img_tmp");		
			var bid = document.getElementById("id_bookIdTxt");
			var page = document.getElementById("id_pageTxt");
			var sid = document.getElementById("id_studentIdTxt");
			var assign = document.getElementById("id_assignStudent");
			var score = document.getElementById("id_pageMark");
			var maxscore = document.getElementById("id_pageMaxMark");

			img.setAttribute("src", "data:image/png;base64,'.base64_encode($imageBlob).'");
			bid.setAttribute("value", "'.$booklet.'");
			page.setAttribute("value", "'.$page.'");
			sid.setAttribute("value", "'.$student.'");
			assign.setAttribute("href", "'.$CFG->wwwroot.'/local/memplugin/search.php?booklet_id='.$booklet.'&page='.$page.'");
										
			score.setAttribute("value", "'.$mark.'");
			maxscore.setAttribute("value", "'.$max_mark.'");
		</script>';
	//echo '<br><div onload="loadit"> Page loaded.</div><br>';
	//test
	echo "Booklet:".$booklet." Page:".$page;
	echo "<br>mark:".$mark." max mark:".$max_mark;
	//echo '<img src="data:image/png;base64,'.$base64.'"/>';
		
?>

