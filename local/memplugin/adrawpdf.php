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
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/adrawpdftest.php');

//TODO: Also when clicking assign student, then should goto search page and parse the booklet id variable. id_assignStudent

$bid = intval($_GET['booklet_id']);
$page = intval($_GET['page']);

$rec = $DB->get_records_sql('SELECT pdf_file_id, {mem_pdf_files}.booklet_id, {mem_pdf_files}.page_num, 
							pdf_file, page_marks, page_marks_max, student_id 
							FROM {mem_booklet_data}, {mem_pages}, {mem_pdf_files} 
							WHERE {mem_booklet_data}.booklet_id=?
							AND {mem_pages}.page_num=?
							AND {mem_pages}.booklet_id={mem_booklet_data}.booklet_id
							AND {mem_pdf_files}.booklet_id={mem_booklet_data}.booklet_id
							AND {mem_pdf_files}.page_num={mem_pages}.page_num', array($bid, $page));

// get following from the query using above!
$student = current($rec)->student_id;
$mark = current($rec)->page_marks;
$maxmark = current($rec)->page_marks_max;
$imgdat = base64_encode(current($rec)->pdf_file);
$img_tmp = '<img id="id_img_tmp" class="img_tmp" src="data:image/png;base64,'.$imgdat.'"/>';

//NOW get the blob and import it into canvas!

//$loaded = '<script>window.onload = initDrw(); </script>';
$loaded = '<script type="text/javascript"> window.onload = draw_class.init();	</script>';
display_draw($loaded);

/**
Display search method prints everything on screen to actually display everything, and links the Javascript file.
*/
function display_draw($js_onload) {
	global $OUTPUT, $bid, $page, $student, $mark, $maxmark, $img_tmp;
	echo $OUTPUT->header();
	echo 'Marking<br>';
	//Perhaps a zoom out/in function? dunno how to do that without distorting canvas&mousexy events.
    echo '<link rel="stylesheet" type="text/css" href="css/marking_canvas.css">
			<script type="text/javascript" src="js/draw.js"></script>
			<table  border="1" class="marking_table">
				<tr>
					<td>
						<div id="id_canvas_container" class="canvas_container">
							<canvas id="id_canvas" width="400" height="300">
							Your browser does not support the HTML5 canvas tag.</canvas>
						</div>
					</td>
					<td>
						<div id="id_controlpage" class="controlpage">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button id="id_btnUp">^<br>Booklet</button> <br>
							<button id="id_btnLeft">&lt;<br>Page</button>
							<button id="id_btnRight">&gt;<br>Page</button> <br>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button id="id_btnDown">v<br>Booklet</button>
							<br><br>
							<div id="id_pageinfo">
							</div>
							
							Booklet ID: <br> <input type="number" id="id_bookIdTxt" disabled value='.$bid.'>
							<br> <br>
							Page: <br> <input type="number" id="id_pageTxt" disabled value='.$page.'>
							<br> <br>
							Student ID: <br> <input type="number" id="id_studentIdTxt" disabled value='.$student.'>
							<br><a id="id_assignStudent">Assign student</a>
							<br> <br>
							Page Mark: <br> <input type="number" id="id_pageMark" min=0 max=999 value='.$mark.'>
							<br> <br>
							Maximum Mark: <br> <input type="number" id="id_pageMaxMark" min=0 max=999 value='.$maxmark.'>
							
							<br><br>
							<button id="id_btnSav">Save Page</button> <br> 
							<div id="id_lastSavPDFdiv">No save performed yet.</div>
						</div>
					</td>
				</tr>
		   	</table>';
	echo $img_tmp;
	echo $js_onload;
	echo $OUTPUT->footer();
}
?>
