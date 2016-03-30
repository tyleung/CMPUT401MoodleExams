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

//$loaded = '<script>window.onload = initDrw(); </script>';
$loaded = '<script type="text/javascript"> window.onload = draw_class.init();	</script>';

display_draw($loaded);

// TODO: need to make it so it gets image from database and loads it into the canvas.
//$mark_sql = $GLOBALS['DB']->get_records_sql('SELECT {mem_mark_stats}.booklet_id, total_booklet_score, total_booklet_score_max FROM {mem_booklet_data}, {mem_mark_stats} WHERE course_id=? and year_semester_origin=? and {mem_mark_stats}.booklet_id={mem_booklet_data}.booklet_id', array($crs, $yr));


//draw get canvas when a JS script here detects onclick on the inside php that is the navigation for the pages.
// when clicked button, it saves the current page, then loads the new page, and the inside php will basically write the new canvas.
// thus this and the inside nested php share a common class that loads canvases etc.
//  Find out the div should be innerHTML'd for the purpose of canvas. the DIV should have scroll and precise window dimension.
//    ^  <div style="resize: both; overflow: auto;"> thus need CSS. NOTE resize not supported in IE and edge!

/**
Display search method prints everything on screen to actually display everything, and links the Javascript file.
*/
function display_draw($js) {
	global $OUTPUT;
	// using google hosted jquery https://developers.google.com/speed/libraries/#jquery
	//echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>';
	echo $OUTPUT->header();
	echo "Marking<br>";
	echo '<link rel="stylesheet" type="text/css" href="css/marking_canvas.css">';
    echo '<script type="text/javascript" src="js/draw.js"></script>
    <div id="id_canvas_container" class="canvas_container">
    	<canvas id="canvas" width="500" height="300"></canvas>
    </div> <br>';
	echo '<button id="idbtn">imagic</button> <br> <div id="lastSavPDF">No save performed yet.</div>';
	echo $js;
	echo $OUTPUT->footer();
}
?>
