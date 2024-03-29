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
 * The form used by 'upload page'
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once '../../config.php';
require_once $CFG->dirroot.'/lib/formslib.php';
require_once $CFG->dirroot.'/lib/datalib.php';

class sample_form extends moodleform {
	function definition() {
		global $CFG, $DB, $USER; //Declare our globals for use
		$mform = $this->_form; //Tell this object to initialize with the properties of the Moodle form.
		//Add all your form elements here
                //$mform->addElement('static', 'whatdo', null, get_string('what_to_upload', 'local_memplugin'));
                $mform->addElement('filepicker', 'userfile', get_string('file'),null,array('maxbytes' => $maxbytes, 'accepted_types'=>'application/pdf'));
                $attributes='size="12"';
                $mform->addElement('text', 'filename_input', get_string('filename', 'local_memplugin), $attributes));

                $mform->addElement('button', 'backbutton', get_string('buttonback', 'local_memplugin'));
                $mform->addElement('button', 'nextbutton', get_string('buttonnext',$'local_memplugin'));
	}

	//If you need to validate your form information, you can override the parent's validation method and write your own.
	function validation($data, $files) {
		$errors = parent::validation($data, $files);
		global $DB, $CFG, $USER; //Declare them if you need them

		//if ($data['data_name'] Some condition here)  {
		//	$errors['element_to_display_error'] = get_string('error', 'local_demo_plug-in');
		//}
	}
}

?>

