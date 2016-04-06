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
$PAGE->set_heading(get_string('searchtitle', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/search.php');

$course = intval($_GET['course_id']);
$bid = intval($_GET['booklet_id']);
$page = intval($_GET['page']);

$hash = $DB->get_record_sql('SELECT {mem_booklet_data}.booklet_id, student_id, exam_hash
							FROM {mem_booklet_data}
							WHERE {mem_booklet_data}.course_id=?
							AND {mem_booklet_data}.booklet_id=?
							', array($course, $bid));

$memhomenode = $PAGE->navigation->add(get_string('memhome', 'local_memplugin'), new moodle_url('memhome.php'));
$gridnode = $memhomenode->add(get_string('grid', 'local_memplugin'), new moodle_url('grid.php?course_id='.$course));
$adrawpdfnode = $gridnode->add(get_string('canvasnav', 'local_memplugin'), new moodle_url('adrawpdf.php?course_id='.$course.'&booklet_id='.$bid.'&page='.$page));
$searchnode = $adrawpdfnode->add(get_string('searchnav', 'local_memplugin'), new moodle_url('search.php?course_id='.$course.'&booklet_id='.$bid.'&page='.$page));
$searchnode->make_active();


$datstudents = array();
/** Retrieve Teacher's courses.
Note: enrolled, with no role. this is too generic, later make this so it retrieves only where user has teacher+ privilige.*/
$enrolled = enrol_get_users_courses($USER->id, true,'*', 'visible DESC, sortorder ASC');

/** Retrieves each student enrolled in the list of all courses the teacher is enrolled in. */
foreach($enrolled as $course) {
	//https://docs.moodle.org/dev/Enrolment_API
	//get_enrolled_users(context $context, $withcapability = '', $groupid = 0, $userfields = 'u.*', $orderby = '', $limitfrom = 0, $limitnum = 0)
	//id is also key. so array_merge overrides is ok.
	$tmp = get_enrolled_users(context_course::instance($course->id),'', 0, 'u.*');
	$datstudents = array_merge($datstudents, $tmp);
}

$recBk = $DB->get_record_sql('SELECT {mem_booklet_data}.booklet_id, student_id, exam_hash
							FROM {mem_booklet_data}
							WHERE {mem_booklet_data}.course_id=?
							AND {mem_booklet_data}.booklet_id=?
							', array(intval($course), $bid));

						
$recPdf = $DB->get_record_sql('SELECT pdf_file_id, pdf_file
							FROM {mem_pdf_files}
							WHERE {mem_pdf_files}.page_num=?
							AND {mem_pdf_files}.exam_hash=?
							AND {mem_pdf_files}.booklet_id=?
							', array($page, $recBk->exam_hash, $bid));

/**
Display search method prints everything on screen to actually display everything, and links the Javascript file.
*/
echo $OUTPUT->header();
echo '<link rel="stylesheet" type="text/css" href="css/marking_canvas.css">
		<script>var course_id_val = '.intval($course).';</script>
		<script src="js/search.js" type="text/javascript"></script>';
echo '<table class="search"><tr><td>
		<div class="img">
		<img alt="Page 0 of Booklet ID ='.$bid.'" src="data:image/png;base64,'.base64_encode($recPdf->pdf_file).'"/>
		</div>
		</td><td>
			Find student: <input id="inputid" name="selectname" onchange="newSearch()"></input>
			<button type="button" id="search_btn_id" onclick="newSearch()">Search</button>
			<div id="aside"></div>
		</td></tr></table>';

echo '<script>var data = '.json_encode($datstudents).';
					var bid = '.$bid.';
					var page = '.$page.';
					window.onload = init(data, bid, page);
					</script>';
echo $OUTPUT->footer();

?>
