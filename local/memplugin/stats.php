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
 * Initial page for the plug-in
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
require_once($CFG->dirroot.'/local/memplugin/stats_class.php');
require_once($CFG->dirroot.'/local/memplugin/stats_form.php');
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/stats.php');

//error_log(print_r($db_entry));
$form = new stats_form();

if($_GET['exam_year_sem_choice']) {
	
	$data = $form->get_data();

	echo $OUTPUT->header();

	create_stats_page($_GET['exam_year_sem_choice']);

	echo $OUTPUT->footer();
	
} else if ($_POST['year_choice_submit']) {
	$data = $form->get_data();
	
	// put custom put or post methods or variables into our html header, put ? in the end at the page.
	// ? variableName, and then get the id of the form element to get their value.
	redirect($CFG->wwwroot.'/local/memplugin/stats.php?exam_year_sem_choice='.$data->year_choice_select);
	//multiple variables you concatenate with & e.g. food_choice=2&test=3 
	//prevent PUT injection: something like the "die[moodle]or else" if u try access that page directly without coming from moodle it will not let it.
	
} else {
	echo $OUTPUT->header();
	$form->display();
	echo $OUTPUT->footer();
}

function create_stats_page($got_req) {

	$calc = new stats();
	//$mform->addElement('header', 'year_sem', get_string('stats_title','local_memplugin'));
	echo '<h1>Results for '.$got_req.'</h1><br>';

	$raw_grades = array(1,2,5,5,0,0,0,0,23,23,20,23,20,11.5);
	$total_mark = 23;
	//$percentage_interval = floor(100/$total_mark);
	$percentage_interval = 5;
	echo $calc->graph($raw_grades, $percentage_interval, $total_mark);

	echo get_string('stats_mean', 'local_memplugin').number_format($calc->mean($calc->to_percentage_array($raw_grades, $total_mark)),2).'%<br>';
	echo get_string('stats_median', 'local_memplugin').number_format($calc->median($calc->to_percentage_array($raw_grades, $total_mark)),2).'%<br>';
	echo get_string('stats_spread', 'local_memplugin').number_format($calc->spread($calc->to_percentage_array($raw_grades, $total_mark)), 2).'%<br>';
	echo get_string('stats_max', 'local_memplugin').$calc->max( $calc->to_percentage_array($raw_grades, $total_mark) ).'%<br>';
	echo get_string('stats_min', 'local_memplugin').$calc->min( $calc->to_percentage_array($raw_grades, $total_mark) ).'%<br>';

	echo '<a href="csv_generate.php?semester='.$got_req.'" alt="download csv">'.get_string('stats_download', 'local_memplugin').'</a></br>';
}

?>
