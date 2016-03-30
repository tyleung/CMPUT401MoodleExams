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
 * Handles the logic to assign students to exam booklets. Utilizes
 * real time searching classes in order to pair students with exams,
 * and assigns that paired data to the database.
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Elyse Hill ehill@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once $CFG->dirroot.'/lib/formslib.php';
require_login();

class create_assign_books_instance extends moodleform{
	function definition(){
		global $CFG, $DB, $USER;
		$mform = $this ->_form;
    	$attributes_heading = 'size="24"';
    	$attributes_radio_text = 'size="11"';	

		//General
		$mform->addElement('header', 'general', get_string('genheader', 'local_memplugin'));


	}
}



?>



