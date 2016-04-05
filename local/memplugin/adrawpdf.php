<?php 

// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.
//
// Images of this toolbar are cited from https://moodle.org/plugins/assignment_uploadpdf

/**
 * This page is for the partial search of students, who you then can assign a booklet-id.
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $PAGE, $CFG, $DB;
require_once('../../config.php');

require_login();
require_capability('local/memplugin:add', context_system::instance());
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('canvastitle', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/adrawpdf.php');

$course_id = 0;
if($_GET['course_id']) {
    $course_id = $_GET['course_id'];
}

$bid = intval($_GET['booklet_id']);
$page = intval($_GET['page']);

// Breadcrumbs
$memhomenode = $PAGE->navigation->add(get_string('memhome', 'local_memplugin'), new moodle_url('memhome.php'));
$gridnode = $memhomenode->add(get_string('grid', 'local_memplugin'), new moodle_url('grid.php?course_id='.$course_id));
$adrawpdfnode = $gridnode->add(get_string('canvasnav', 'local_memplugin'), new moodle_url('adrawpdf.php?course_id='.$course_id.'&booklet_id='.$bid.'&page='.$page));
$adrawpdfnode->make_active();

//TODO: Also when clicking assign student, then should goto search page and parse the booklet id variable. id_assignStudent
$recPDF = $DB->get_records_sql('SELECT pdf_file_id, {mem_pdf_files}.booklet_id, {mem_pdf_files}.page_num, 
							pdf_file, student_id 
							FROM {mem_booklet_data}, {mem_pdf_files} 
							WHERE {mem_booklet_data}.booklet_id=?
							AND {mem_pdf_files}.page_num=?
							AND {mem_pdf_files}.booklet_id={mem_booklet_data}.booklet_id', array($bid, $page));

$recPages = $DB->get_records_sql('SELECT page_id, {mem_booklet_data}.booklet_id, page_marks, page_marks_max
							FROM {mem_booklet_data}, {mem_pages}
							WHERE {mem_booklet_data}.booklet_id=?
							AND {mem_pages}.page_num=?
							AND {mem_pages}.booklet_id={mem_booklet_data}.booklet_id', array($bid, $page));

// get following from the query using above!
$student = current($recPDF)->student_id;
$mark = current($recPages)->page_marks;
$maxmark = current($recPages)->page_marks_max;
$imgdat = base64_encode(current($recPDF)->pdf_file);
//var_dump($recPDF);
/*
print_r("book".$bid."pg".$page);
var_dump(current($rec));
var_dump(current($rec)->pdf_file);
*/
$img_tmp = '<img id="id_img_tmp" class="img_tmp" src="data:image/png;base64,'.$imgdat.'"/>';

//NOW get the blob and import it into canvas!

//$loaded = '<script>window.onload = initDrw(); </script>';
$loaded = '<script type="text/javascript"> window.onload = draw_class.init();	</script>';
display_draw($loaded);

/**
* Display search method prints everything on screen to actually display everything, and links the Javascript file.
*/
function display_draw($js_onload) {
	global $OUTPUT, $bid, $page, $student, $mark, $maxmark, $img_tmp;
	echo $OUTPUT->header();
	echo $img_tmp;
	echo 'Marking<br>';
	//Perhaps a zoom out/in function? dunno how to do that without distorting canvas&mousexy events.
    echo '<link rel="stylesheet" type="text/css" href="css/marking_canvas.css">
		  <link rel="stylesheet" type="text/css" href="css/marking_tools.css">
		  <link rel="stylesheet" type="text/css" href="css/calculator.css">
			<script type="text/javascript" src="js/draw.js"></script>
			<table  border="1" class="marking_table">
				<tr>
					<td>
						<div>
							<ul class="toolbar">

								<li class="toolbaritem" id="tool_draw"><a><img src="pix/freehandicon.png" width = "30" height="30"></a></li>
								<li class="toolbaritem" id="tool_check"><a><img src="pix/stamps/tick.png" width = "30" height="30"></a></li>
								<li class="toolbaritem" id="tool_cross"><a><img src="pix/stamps/cross.png" width = "30" height="30"></a></li>
								<li class="toolbaritem" id="tool_erase"><a><img src="pix/eraseicon.png" width = "30" height="30"></a></li>
								<li class="toolbaritem" id="tool_type"><a><img src="pix/commenticon.png" width = "30" height="30"></a></li>
							</ul>
							<img id="checkmarkimg" src="pix/stamps/tick.png" width = "0" height="0">
							<img id="crossmarkimg" src="pix/stamps/cross.png" width = "0" height="0">
						</div>
					</td>
					<td>
						<div id="id_canvas_container" class="canvas_container">
							<canvas id="id_canvas" width="400" height="300">
							Your browser does not support the HTML5 canvas tag.</canvas>
						</div>
					</td>
					<td>
						<div id="id_controlpage" class="controlpage">
							<br>
							<button id="id_btnSav" class="btn_sav">Save Page</button><br> 
							<br>
							<center><div id="id_lastSavPDFdiv">No save performed yet.</div></center>
							<br>
							<center><button id="id_btnUp" class="btn_up">^<br>Booklet</button><br></center>
							<button id="id_btnLeft" class="btn_left">&lt;<br>Page</button>
							<button id="id_btnRight" class="btn_right">&gt;<br>Page</button> <br>

							<center><button id="id_btnDown" class="btn_down">v<br>Booklet</button>
							<br><br></center>
							<div id="id_pageinfo">
							</div>
							
							Booklet ID: <br> <input type="number" id="id_bookIdTxt" disabled value='.$bid.'>
							<br> <br>
							Page: <br> <input type="number" id="id_pageTxt" disabled value='.$page.'>
							<br> <br>
							Student ID: <br> <input type="number" id="id_studentIdTxt" disabled value='.$student.'>
							<br><a id="id_assignStudent" href="'.$CFG->wwwroot.'search.php?course_id='.$course_id.'&booklet_id='.$bid.'&page='.$page.'">Assign student</a>
							<div id="id_div_page_mark">
							<br>
							Page Mark: <br> <input type="number" id="id_pageMark" min=0 max=999 onchange="checkMax()" value='.$mark.'>
							<br> <br>
							Maximum Mark: <br> <input type="number" id="id_pageMaxMark" min=0 max=999 onchange="checkMax()" value='.$maxmark.'>
							</div>
							<div id="calculator">
								<!-- Screen and clear key -->
								<div class="top">
									<span class="clear">C</span>
									<div class="screen"></div>
								</div>
	
								<div class="keys">
									<!-- operators and other keys -->
									<span>7</span>
									<span>8</span>
									<span>9</span>
									<span class="operator">+</span>
									<span>4</span>
									<span>5</span>
									<span>6</span>
									<span class="operator">-</span>
									<span>1</span>
									<span>2</span>
									<span>3</span>
									<span class="operator">÷</span>
									<span>0</span>
									<span>.</span>
									<span class="eval">=</span>
									<span class="operator">x</span>
								</div>
							</div>
							<!-- PrefixFree -->
							<script src="js/calculator.js" type="text/javascript" type="text/javascript"></script>
						</div>
					</td>
				</tr>
		   	</table>';


	echo $js_onload;
	echo $OUTPUT->footer();
}
?>

