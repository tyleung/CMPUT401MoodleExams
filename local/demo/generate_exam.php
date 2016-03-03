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
 * Handles the logic for the email template
 *
 * @package     local
 * @subpackage  demo
 * @copyright   Elyse Hill ehill@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $CFG, $PAGE, $DB;
 
require_once('../../config.php');

require_login();
require_capability('local/demo:add', context_system::instance());
require_once($CFG->dirroot.'/local/demo/generate_exam_form.php');

$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_demo'));
$PAGE->set_heading(get_string('createheader', 'local_demo'));
$PAGE->set_url($CFG->wwwroot.'/local/demo/generate_exam.php');
$class_section_form = new create_generate_exam_instance();

if ($generate_exam_form->is_cancelled()) {
	redirect($CFG->wwwroot.'/local/demo/view.php');
} elseif ($data = $generate_exam_form->get_data()) {
	$check = $data->test1;
	redirect($CFG->wwwroot.'/local/demo/view.php');
} else {
	echo $OUTPUT->header();
	$generate_exam_form->display();
	echo $OUTPUT->footer();
}
?>
