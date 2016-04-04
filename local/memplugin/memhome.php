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
 * Main page of the plugin. 
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
require_once($CFG->dirroot.'/local/memplugin/memhome_form.php');
require_once($CFG->dirroot.'/local/memplugin/exams_list_form.php');

$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('Welcome', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/memhome.php');
$node = $PAGE->navigation->add(get_string('memhome', 'local_memplugin'), new moodle_url('memhome.php'));
$node->make_active();
$create_mark_form = new create_memhome_instance();
$exam_list_form   = new create_exam_list_instance();

if ($_POST['create']) {
	redirect($CFG->wwwroot.'/local/memplugin/generate_exam.php');
} elseif($_POST['mark']) {
	redirect($CFG->wwwroot.'/local/memplugin/mark_exam.php');
} elseif($_POST['stats']){
	redirect($CFG->wwwroot.'/local/memplugin/stats.php');
} elseif ($create_mark_form->is_cancelled()) {
	redirect($CFG->wwwroot.'/local/memplugin/view.php');
} elseif ($data = $create_mark_form->get_data()) {
	$check = $data->test1;
	redirect($CFG->wwwroot.'/local/memplugin/view.php');
} else {
	echo $OUTPUT->header();
	$create_mark_form->display();
	$exam_list_form->display();
	display_exams_list();
	echo $OUTPUT->footer();
}
?>
