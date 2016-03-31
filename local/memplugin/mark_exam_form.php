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
 * Form logic for uploading and beginning the process of marking exams.
 * User is presented with a list of courses relevant to an exam, and 
 * allowed to upload PDF documents.
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Elyse Hill ehill@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once $CFG->dirroot.'/lib/formslib.php';
require_login();

class create_mark_exam_instance extends moodleform{
	function definition(){
		global $CFG, $DB, $USER;
		$mform = $this ->_form;
    	$attributes_heading = 'size="24"';
    	$attributes_radio_text = 'size="11"';	

		//General Section. 
		$mform->addElement('header', 'general', get_string('genheader', 'local_memplugin'));

		//Get list of logged in user's enrolled courses and display as checkboxes.
		$user_courses = enrol_get_users_courses($USER->id, true, '*', 'visible DESC,sortorder ASC');
        $select_course_array=array();
        $selectgroup = array();

        foreach ($user_courses as $uc){
			$courses_group[] =& $mform->createElement('advcheckbox', 'courseboxes['.$uc->id.']', null, $uc->fullname, array('group'=>0),array(0,1));
        }
		$mform->addElement('group', 'courseselect', get_string('courses', 'local_memplugin'), $courses_group, array('<br>'), false);

		//Upload manager for files. 
		$mform->addElement('header', 'fileheader', get_string('file', 'local_memplugin'));

		//Switch to a filepicker for now until we figure out how it works.
		//$mform->addElement('filemanager', 'files', get_string('exambatch', 'local_memplugin'), null, array('accepted_types' => 'image/png'));
		$mform->addElement('filepicker', 'userfile', get_string('exambatch','local_memplugin'), null, array('accepted_types' => 'image/png'));

		$mform->closeHeaderBefore('buttonar');
		$buttonarray   =  array();
		$buttonarray[] =& $mform->createElement('submit','savebutton', get_string('savebutton', 'local_memplugin'));
		$buttonarray[] =& $mform->createElement('submit','markbutton', get_string('markbutton', 'local_memplugin'));
		$mform->addGroup($buttonarray, 'buttonar', '', array(' '), false);

	}
}
?>

