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
 * Handles the logic of the mark_exam page. Appends a list of course 
 * IDs to a URL to send to later pages that will be used to mark exams.
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
require_once($CFG->dirroot.'/local/memplugin/mark_exam_form.php');
require_once($CFG->dirroot.'/local/memplugin/mme_exams_submission.php');

$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('markheader', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/mark_exam.php');

$form = new create_mark_exam_instance();

//get course id somehow from other form GET
//append to redirect name with question mark 
//http://stackoverflow.com/questions/5479940/handling-a-dynamic-amount-of-checkboxes-with-php

if($_POST['markbutton']){
	$data = $form->get_data();
	$selections = $data->courseboxes;
	$choices = array();

	foreach($selections as $key => $value){
		if(strcasecmp($value, '1')==0){
			$choices[$key] = $value;
		}
	}
	$courses = serialize($choices);
	//var_dump($choices);
	
	$exam_data = $form->get_file_content('userfile');
	
	#
	/*
	$scan = new MME_exam_submission($exam_data);
	for ($i = 0;$i<3;$i++){
		echo $scan->get_deserialized_data()[$i].'</br>'; 
	}
	*/


	file_put_contents(sys_get_temp_dir()."/temp.zip",$exam_data);
	
	$zipfile = new ZipArchive();

	$zipfile->open(sys_get_temp_dir()."/temp.zip");

	for($i = 0; $i < $zipfile->numFiles;$i++){
		$stat = $zipfile->statIndex($i);
		$img = $zipfile->getFromName($stat['name']);
		$scan = new MME_exam_submission($img);
		echo $scan->get_deserialized_data()[$i].'</br>';
	}


	//redirect($CFG->wwwroot.'/local/memplugin/assign_books.php?courses_ids='.$courses);

} elseif($_POST['savebutton']){
	$data = $form->get_data();

	$selections = $data->courseboxes;
	$choices = array();

	foreach($selections as $key => $value){
		if(strcasecmp($value, '1')==0){
			$choices[$key] = $value;
		}
	}
	$courses = serialize($choices);
	redirect($CFG->wwwroot.'/local/memplugin/memhome.php?courses_ids='.$courses);
}
else { 
	if($form->is_cancelled()) {
		redirect($CFG->wwwroot.'/local/memplugin/memhome.php');
	} elseif ($data = $form->get_data()) {
		$check = $data->test1;
		redirect($CFG->wwwroot.'/local/memplugin/assign_books.php');
	} else {
		echo $OUTPUT->header();
		$form->display();
		echo $OUTPUT->footer();
	}
}


?>









