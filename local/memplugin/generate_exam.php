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
 * Handles the logic for generating a new exam.  
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Elyse Hill ehill@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $CFG, $PAGE, $DB;
 
require_once('../../config.php');

require_login();
require_capability('local/memplugin:add', context_system::instance());
require_once($CFG->dirroot.'/local/memplugin/generate_exam_form.php');

$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('createheader', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/generate_exam.php');
$form = new create_generate_exam_instance();

if ($_POST['exam_submit']) {
	$data = $form->get_data();
	$content = $form->get_file_content('userfile');

	if (is_numeric ($data->exam_count) and is_numeric ($data->extra_count)){
		echo $content;
		//redirect($CFG->wwwroot.'/local/memplugin/examclasstestresult.php?exam_count='.$data->exam_count.'&extra_count='.$data->extra_count.'&name='.$data->name);
	} else {
		echo $OUTPUT->header();
		echo "exam and extra page input must be numeric.";
		$form->display();
		echo $OUTPUT->footer();
	}
} else {
	echo $OUTPUT->header();
	$form->display();
	echo $OUTPUT->footer();
}
?>
