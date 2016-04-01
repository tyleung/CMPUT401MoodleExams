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
 * Handles the logic for the main page. Generates a table of exams
 * relevant to the logged in user and begins the process of either
 * creating and generating a new exam, or marking an existing exam. 
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Elyse Hill ehill@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once $CFG->dirroot.'/lib/formslib.php';
require_login();

/**
 *	Function for displaying UI elements on the main Screen
 */
class create_exam_list_instance extends moodleform{
	function definition(){
		global $CFG, $DB, $USER;
		$mform = $this ->_form;
    	$attributes_heading = 'size="24"';
    	$attributes_radio_text = 'size="11"';	
		$mform->addElement('html', '<h1>'.get_string('yourexams', 'local_memplugin').'</h1>');
	}
}

/**
 *	Function to display a teacher's available exams. This uses all the
 *  courses that a teacher is enrolled in and checks which course has 
 *  exams related to it. Shows the exam, the date and adds a 
 */
function display_exams_list(){
	global $DB, $CFG, $USER;
	$IP_Address = 
	$tableName = 'Exams';
	$user_table = 'user';
	$table = new html_table();
	$table->head = array('   Course    ', '    Date    ', '   Navigation     ');
	$table->tablealign = 'center';
	$table->width = '100%';
	$user_courses = enrol_get_users_courses($USER->id, true, '*', 'visible DESC,sortorder ASC');
	

	foreach ($user_courses as $uc){
		//if there's actually a booklet
		$rec = $DB->get_records_sql('SELECT booklet_id, year_semester_origin 
							FROM {mem_booklet_data}
							WHERE course_id=?', array(intval($uc->id)));
		$row_info = array();
		//need to pass exam to link but it's fine for now
		$row = new html_table_row(array($uc->fullname, current($rec)->year_semester_origin,'<div style="text-align: center"><a href='.$CFG->wwwroot.'/local/memplugin/grid.php?course_id='.intval($uc->id).'>'.get_string('startmarking', 'local_memplugin').'</a></div>'));
		$table->data[] = $row;

	}
	
	echo html_writer::table($table);
//	redirect($CFG->wwwroot.'/local/memplugin/assign_books.php?courses_ids='.$courses);
    
}

/*
$row = new html_table_row(array('Item #1', 'Example')); 
$row->attributes['data-id'] = '1'; 
$table->data[] = $row; 

$row = new html_table_row(array('Item #2', 'Example')); 
$row->attributes['data-id'] = '2'; 
$row->attributes['data-parentid'] = '1'; 
$table->data[] = $row; 

echo html_writer::table($table); 
*/


?>






