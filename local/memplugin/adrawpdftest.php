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

$bid = intval($_GET['booklet_id']);
$page = intval($_GET['page']);
// get following from the query using above!
$student = 0;
$mark = 0;
$maxmark = 0;

//$loaded = '<script>window.onload = initDrw(); </script>';
$loaded = '<script type="text/javascript"> window.onload = draw_class.init();	</script>';
$loaded2 = '<script type="text/javascript"> window.onload = mark_tools.init();   </script>';

display_draw($loaded);
mark_tools($loaded2);

// TODO: need to make it so it gets image from database and loads it into the canvas.
//$mark_sql = $GLOBALS['DB']->get_records_sql('SELECT {mem_mark_stats}.booklet_id, total_booklet_score, total_booklet_score_max FROM {mem_booklet_data}, {mem_mark_stats} WHERE course_id=? and year_semester_origin=? and {mem_mark_stats}.booklet_id={mem_booklet_data}.booklet_id', array($crs, $yr));

//TODO: Also when clicking assign student, then should goto search page and parse the booklet id variable. id_assignStudent


/**
Display search method prints everything on screen to actually display everything, and links the Javascript file.
*/
function display_draw($js_onload) {
	global $OUTPUT, $bid, $page, $student, $mark, $maxmark;
	echo $OUTPUT->header();
	echo '<script trype="text/javascript" src="js/marktools.js"></script>';
	// using http://www.w3schools.com/css/css_navbar.asp
	echo '
			<style>
			html, body {
				width : 100%;
				height: 100%;
			}

			#toolbardiv {
				position:absolute;
				left:13%;
				top:10%

			}

			ul.toolbar {
				list-style-type: none;
				margin: 0;
				padding: 0;
				width: 50px;
				background-color: #f1f1f1;
			}

			li.toolbaritem a {
				display: block;
				color: #000;
				padding: 8px 0 8px 8px;
				text-decoration: none;
			}

			/* Change the link color on hover */
			li.toolbaritem a:hover {
				background-color: #555;
				color: white;
			}
			.active {
    			background-color: #4CAF50;
			}

			#drawcanvas {
				position:absolute;
				left: 18%;
				top:10%;
			}

			#navigationbardiv {
				position:absolute;;
				right:20%;
				top:10%;
			}

			ul.navigationbar {
				list-style-type: none;
				margin: 0;
				padding: 0;
				overflow: hidden;
				background-color: #f1f1f1;
			}

			li.navigationarrowup {
				float:left;
			}

			li.navigationarrowup a {
				display: block;
				color: #000;
				padding: 8px 8px;
				text-decoration: none;
				transform: rotate(180deg);
			}

			/* Change the link color on hover */
			li.navigationarrowup a:hover {
				background-color: #555;
				color: white;
			}

			li.navigationarrowleft {
				float:left;
			}

			li.navigationarrowleft a {
				display: block;
				color: #000;
				padding: 8px 8px;
				text-decoration: none;
				transform: rotate(90deg);
			}

			/* Change the link color on hover */
			li.navigationarrowleft a:hover {
				background-color: #555;
				color: white;
			}

			li.navigationarrowright {
				float:left;
			}

			li.navigationarrowright a {
				display: block;
				color: #000;
				padding: 8px 8px;
				text-decoration: none;
				transform: rotate(270deg);
			}

			/* Change the link color on hover */
			li.navigationarrowright a:hover {
				background-color: #555;
				color: white;
			}

			li.navigationarrowdown {
				float:left;
			}

			li.navigationarrowdown a {
				display: block;
				color: #000;
				padding: 8px 8px;
				text-decoration: none;
			}

			/* Change the link color on hover */
			li.navigationarrowdown a:hover {
				background-color: #555;
				color: white;
			}



			</style>


			<div id="toolbardiv">
				<ul class="toolbar">
					<li class="toolbaritem"><a><img src = "pix/freehandicon.png" width="30" height="30"></a></li>
					<li class="toolbaritem"><a><img src = "pix/stamps/tick.png" width="30" height="30"></a></li>
					<li class="toolbaritem"><a><img src = "pix/stamps/cross.png" width="30" height="30"></a></li>
					<li class="toolbaritem"><a><img src = "pix/eraseicon.png" width="30" height="30"></a></li>
					<li class="toolbaritem"><a><img src = "pix/commenticon.png" width="30" height="30"></a></li>
				</ul>
			</div>

			';
	echo "THIS IS TEST YEH<br>";
	echo '<button id="idbtn">imagic</button> <br> <div id="lastSavPDF">No save performed yet.</div>';
	echo $js;
	echo "Marking<br>";
    echo '<link rel="stylesheet" type="text/css" href="css/marking_canvas.css">
			<script type="text/javascript" src="js/draw.js"></script>
			<table  border="1" class="marking_table">
				<tr>
					<td>
						<div id="id_canvas_container" class="canvas_container">
							<canvas id="id_canvas" width="500" height="700">
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
	echo $js_onload;
	echo $OUTPUT->footer();
}
?>
