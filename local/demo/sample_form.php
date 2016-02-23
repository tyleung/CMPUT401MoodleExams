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
 * @copyright   Eric Cheng ec10@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once '../../config.php';
require_once $CFG->dirroot.'/lib/formslib.php';
require_once $CFG->dirroot.'/lib/datalib.php';

class sample_form extends moodleform {
        function definition() {
                global $CFG, $DB, $USER; //Declare our globals for use
                $mform = $this->_form; //Tell this object to initialize with the properties of the Moodle form.
                $mform->addElement('header', 'food', get_string('food_heading', 'local_demo'));
                $selection = array();
                $selection[0] = '';
                $selection[1] = get_string('food1', 'local_demo');
                $selection[2] = get_string('food2', 'local_demo');
                $selection[3] = get_string('food3', 'local_demo');
                $select = array();
                $select[] = $mform->createElement('select', 'food_select', get_string('favoritefood', 'local_demo'), $selection);
                $select[] = $mform->createElement('submit', 'food_submit', get_string('food_selected', 'local_demo'));
                $mform->addElement('group', 'food_selector', get_string('food_section', 'local_demo'), $select, array(' '), false);
                //Add all your form elements here
        }
}
