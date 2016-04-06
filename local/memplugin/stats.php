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

//defined('MOODLE_INTERNAL') || die();

require_once('../../config.php');
global $PAGE, $CFG, $DB;

require_login();

// TODO PROPER permission, so teachers can access.
require_capability('local/memplugin:add', context_system::instance());
//require_capability('moodle/course:update', context_system::instance());

require_once($CFG->dirroot.'/local/memplugin/stats_class.php');
require_once($CFG->dirroot.'/local/memplugin/stats_form.php');
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('statstitle', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/stats.php');

$homenode = $PAGE->navigation->add(get_string('memhome', 'local_memplugin'), new moodle_url('memhome.php'), navigation_node::TYPE_CONTAINER);
$pagenode = $homenode->add(get_string('statsnav', 'local_memplugin'), new moodle_url('stats.php'));
$pagenode->make_active();

//error_log(print_r($db_entry));
$form = new stats_sem_form();
$formcourse = new stats_course_form();
	
if ($_GET['course_choice']){
	echo $OUTPUT->header();
	//$form->custom_display($_GET['course_choice']);
	$form->display();
	echo $OUTPUT->footer();	
	
} else if($_GET['exam_year_sem_choice']) {
	
	//$data = $form->get_data();
	$db_date = $_GET['exam_year_sem_choice'];
	// &nbsp;
	$courseid = strtok($db_date, "_");

	//print_r($courseid."-courseid<br>");
	
	$sem = strtok("_");
	
	//print_r($sem."-sem<br>");

	echo $OUTPUT->header();

	create_stats_page($courseid, $sem);

	echo $OUTPUT->footer();
}
	
if ($_POST['year_choice_submit']) {
	//$data_y = $form->get_data();
	//var_dump($data_y);
	//var_dump($_REQUEST['year_choice_select']);

	// $_REQUEST taken from http://www.html-form-guide.com/php-form/php-form-post.html
	// Used here because $form->get_data(); only containted the value of the submit button for some reason, and NOT the info needed.
	redirect($CFG->wwwroot.'/local/memplugin/stats.php?exam_year_sem_choice='.$_REQUEST['year_choice_select']);
	//multiple variables you concatenate with & e.g. food_choice=2&test=3 
	//prevent PUT injection: something like the "die[moodle]or else" if u try access that page directly without coming from moodle it will not let it.
} else if($_POST['course_choice_submit']) {
	$data_c = $formcourse->get_data();
	redirect($CFG->wwwroot.'/local/memplugin/stats.php?course_choice='.$data_c->course_choice_select);
	//header("LOCATION: ".$CFG->wwwroot.'/local/memplugin/stats.php?course_choice='.$data->course_choice_select);
	$form->display();
	
}
if(!$_GET['exam_year_sem_choice'] && !$_GET['course_choice']) {
	echo $OUTPUT->header();
	$formcourse->display();
	echo $OUTPUT->footer();
}


/**
Function that draws the statistics onto the page and provides a link to the downloadable CSV.
*/
function create_stats_page($crs, $yr) {

	$calc = new stats();
	//$mform->addElement('header', 'year_sem', get_string('stats_title','local_memplugin'));
	echo '<h1>Results for '.$yr.'</h1><br>';

	/** The SQL query to retrieve all the totatl marks for each booklet for a specific year and course. */
	$mark_sql = $GLOBALS['DB']->get_records_sql('SELECT {mem_mark_stats}.booklet_id, total_booklet_score, total_booklet_score_max FROM {mem_booklet_data}, {mem_mark_stats} WHERE course_id=? and year_semester_origin=? and {mem_mark_stats}.booklet_id={mem_booklet_data}.booklet_id', array($crs, $yr));
	
	$total_mark = current($mark_sql)->total_booklet_score_max;
	$raw_marks = array();
	
	foreach($mark_sql as $i) {
		array_push($raw_marks, $i->total_booklet_score);
	}
	
	/*
	print_r($total_mark);
	echo "</br>";
	print_r($raw_marks);
	echo "</br>";
	*/
	
	//$percentage_interval = floor(100/$total_mark);
	$percentage_interval = 5;
	echo $calc->graph($raw_marks, $percentage_interval, $total_mark);

	echo get_string('stats_mean', 'local_memplugin').number_format($calc->mean($calc->to_percentage_array($raw_marks, $total_mark)),2).'%<br>';
	echo get_string('stats_median', 'local_memplugin').number_format($calc->median($calc->to_percentage_array($raw_marks, $total_mark)),2).'%<br>';
	echo get_string('stats_spread', 'local_memplugin').number_format($calc->spread($calc->to_percentage_array($raw_marks, $total_mark)), 2).'%<br>';
	echo get_string('stats_max', 'local_memplugin').$calc->max( $calc->to_percentage_array($raw_marks, $total_mark) ).'%<br>';
	echo get_string('stats_min', 'local_memplugin').$calc->min( $calc->to_percentage_array($raw_marks, $total_mark) ).'%<br>';

	/** This link generates the CSV by calling csv_generate.php */
	echo '<a href="csv_generate.php?semester='.$yr.'&course='.$crs.'" alt="download csv">'.get_string('stats_download', 'local_memplugin').'</a></br>';
}

?>
