<?php

//defined('MOODLE_INTERNAL') || die();
global $PAGE, $CFG, $DB;
require_once '../../config.php';
	
	// THIS page also should retrieve the page's score and Max score and save it to database.
	// Update if this entry already exists.
	$page = intval($_POST['page']);
	$booklet = intval($_POST['booklet']);
	//fetch from database:

	$rec = $DB->get_records_sql('SELECT pdf_file_id, {mem_pdf_files}.booklet_id, {mem_pdf_files}.page_num, 
							pdf_file, page_marks, page_marks_max, student_id 
							FROM {mem_booklet_data}, {mem_pages}, {mem_pdf_files} 
							WHERE {mem_booklet_data}.booklet_id=?
							AND {mem_pages}.page_num=?
							AND {mem_pages}.booklet_id={mem_booklet_data}.booklet_id
							AND {mem_pdf_files}.booklet_id={mem_booklet_data}.booklet_id
							AND {mem_pdf_files}.page_num={mem_pages}.page_num', array($booklet, $page));
	
	//THIS DOESNT WORK WHY?????????????????????????????????????????????????????
	
	//$mark = current($rec)->page_marks;
	//$max_mark = current($rec)->page_marks_max;
	//$student = current($rec)->student_id;
	//$imageBlob = current($rec)->pdf_file;
	
	//TODO: fetch page from database and then load it into canvas.
	if(!is_null($rec)) {
		echo '<script type="text/javascript">
				console.log("aaaa");
				function loadit() {
					console.log("aaaa");
					var img = document.getElementById("id_img_tmp");			
					var bid = document.getElementById("id_bookIdTxt");
					var page = document.getElementById("id_pageTxt");
					var sid = document.getElementById("id_studentIdTxt");
					var score = document.getElementById("id_pageMark");
					var maxscore = document.getElementById("id_pageMaxMark");
			
					img.setAttribute("src", "'.base64_encode($imageBlob).'");
					bid.setAttribute("value", "'.$booklet.'");
					page.setAttribute("value", "'.$page.'");
					sid.setAttribute("value", "'.$student.'");
					score.setAttribute("value", "'.$mark.'");
					maxscore.setAttribute("value", "'.$max_mark.'");
				}
			</script>';
		//echo '<br><div onload="loadit"> Page loaded.</div><br>';
		//test
		echo "Booklet:".$booklet." Page:".$page;
		echo "<br>mark:".$mark." max mark:".$max_mark;
		//echo '<img src="data:image/png;base64,'.$base64.'"/>';
	} else {
		echo "Couldn't retrieve data from database.";
	}	
?>

