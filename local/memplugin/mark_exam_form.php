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
class create_mark_exam_instance extends moodleform{
	function definition(){
	global $CFG, $DB, $USER;
	$mform = $this ->_form;
	//set size of the header
    $attributes_heading = 'size="24"';
    $attributes_radio_text = 'size="11"';	

	//General
	$mform->addElement('header', 'nameforyourheaderelement', get_string('genmakeheader', 'local_memplugin'));
    $mform->addElement('select', 'type', get_string('sectionheader', 'local_memplugin'), $FORUM_TYPES, $attributes);
	$mform->addElement('header', 'nameforyourheaderelement', get_string('file', 'local_memplugin'));
	$mform->addElement('filemanager', 'files', get_string('exambatch', 'local_memplugin'), null, $options);
	$mform->closeHeaderBefore('genbutton');
	$mform->addElement('button', 'genbutton', get_string('markbutton','local_memplugin'));


	}
}


?>



