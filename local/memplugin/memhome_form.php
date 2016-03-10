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
class create_memhome_instance extends moodleform{
	function definition(){
		global $CFG, $DB, $USER;
		$mform = $this ->_form;
    	$attributes_heading = 'size="24"';
    	$attributes_radio_text = 'size="11"';	

		$mform->addElement('header', 'general', get_string('genheader', 'local_memplugin'));
		$buttonarray   =  array();
		$buttonarray[] =& $mform->createElement('submit','create', get_string('createbutton', 'local_memplugin'));
		$buttonarray[] =& $mform->createElement('submit','mark', get_string('markbutton', 'local_memplugin'));
		$mform->addGroup($buttonarray, 'buttonar', 'What would you like to do?', array(' '), false);

//html link tag PUT or POST for sending information. Put more secure but post can get from URL
//Heading needs HTML justification. 
//KEEP UNTIL DATA PICKER ADDED TO MARK EXAM PAGE. Needed for regulation storag


	}
}


?>



