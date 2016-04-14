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
 * The form used by 'feedback_ec10'
 *
 * @package     local
 * @subpackage  demo_plug-in
 * @copyright   Elyse Hill ehill@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once '../../config.php';
require_once $CFG->dirroot.'/lib/formslib.php';
require_once $CFG->dirroot.'/lib/datalib.php';

class mme_exam_form extends moodleform {
	function definition() {
		global $CFG, $DB, $USER;
		$mform = $this->_form;

		$attributes='size="5"';
		$mform->addElement('textarea','exam_count',get_string('exam_form','exam_count'),$attributes);
		$mform->addElement('textarea','extra_count',get_string('exam_form','extra_count'),$attributes);
		$mform->addElement('submit', 'exam_submit', get_string('exam_form','submit'));

	}
	
	function validation($data, $files) {
		$errors = parent::validation($data, $files);
		global $DB, $CFG, $USER;
	}
}

?>
