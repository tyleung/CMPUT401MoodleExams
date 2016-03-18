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
 * Exam results page for a course.
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Terence Leung tyleung@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $PAGE, $CFG, $DB;
require_once('../../config.php');

//defined('MOODLE_INTERNAL') || die();

require_login();
require_capability('local/memplugin:add', context_system::instance());
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/results.php');

echo $OUTPUT->header();
?>

<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
<script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf8" src="js/jquery.dataTables.min.js"></script>

<table id="results_table" class="display">
    <thead>
        <tr>
            <th>First name</th>
            <th>Last name</th>
			<th>Student ID</th>
			<th>Mark</th>
        </tr>
    </thead>
    <tbody>
		<?php
		populate_results_table();
		?>
    </tbody>
</table>

<script>
$(document).ready( function () {
    $('#results_table').DataTable();
} );
</script>

<?php
echo $OUTPUT->footer();

/**
Populates the results table with data from the database.
*/
function populate_results_table() {
	//if($_GET['course_id']) {	
		//$course_id = $_GET['course_id'];
		$course_id = 2;
		$sql = "SELECT u.firstname, u.lastname, u.idnumber, mms.total_booklet_score 
				FROM {user} u, {mem_mark_stats} mms,  {mem_booklet_data} mbd 
				WHERE mbd.course_id = " . $course_id . " 
				AND mbd.student_id = u.idnumber 
				AND mbd.booklet_id = mms.booklet_id";
		$marks_rs = $GLOBALS['DB']->get_recordset_sql($sql);
	//}
	
	foreach($marks_rs as $mark) {
		echo '<tr>';
		echo '<td>';
		print_r($mark->firstname);
		echo '</td>';
		echo '<td>';
		print_r($mark->lastname);
		echo '</td>';
		echo '<td>';
		print_r($mark->idnumber);
		echo '</td>';
		echo '<td>';
		print_r($mark->total_booklet_score);
		echo '</td>';
		echo '</tr>';
	}
	
	$marks_rs->close();
}
?>