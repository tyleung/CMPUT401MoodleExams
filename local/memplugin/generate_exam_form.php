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
 * @subpackage  memplugin
 * @copyright   Elyse Hill ehill@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once $CFG->dirroot.'/lib/formslib.php';
require_login();
/*
* This function creates and displays the email form
* It also fills out predefined feedback snippets for the user to enter
* this functionality will be further refined
*/
class create_generate_exam_instance extends moodleform{
	function definition(){
		global $CFG, $DB, $USER;
		$mform = $this ->_form;
		//set size of the header
	    $attributes_heading = 'size="24"';
	    $attributes_radio_text = 'size="11"';	
	
		//General
		$mform->addElement('header', 'nameforyourheaderelement', get_string('genmakeheader', 'local_memplugin'));
	    $mform->addElement('textarea', 'introduction', get_string('makeexam', 'local_memplugin'),'wrap="virtual" rows="1" cols="120" resize="none" style="resize:none"');
		$mform->addElement('filepicker', 'userfile', get_string('file','local_memplugin'), null, array('maxbytes' => $maxbytes, 'accepted_types' => '*'));

		//Copy Options
		$mform->addElement('header', 'nameforyourheaderelement', get_string('copyheader','local_memplugin'));

		$mform->addElement('html', '<b>'.get_string('examcopies', 'local_memplugin').'</b> <br> <input type="number" value="0"</input>');
		$howtogenerate = get_string('howtogenerate', 'local_memplugin');

		//Generate Options
		//Add option for "Emergency pages"
		$downarray   =  array();
		$downarray[] =& $mform->createElement('radio','yesno', '', get_string('multicopy','local_memplugin'));
		$downarray[] =& $mform->createElement('radio','yesno', '', get_string('largecopy','local_memplugin'));
		$mform->addGroup($downarray, 'downarray', 'How would you like to download?', array(' '), false);
		$mform->closeHeaderBefore('genbutton');
		$mform->addElement('button', 'genbutton', get_string('generatebutton','local_memplugin'));


	}
	


}


?>



