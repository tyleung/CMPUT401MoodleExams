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
 * Creates the menu options for 'feedback_ec10'.  The access to the plug-in is managed by this file.
 * The link is added to the left side bar of the Moodle website.
 *
 * @package     local
 * @subpackage  demo_plug-in
 * @copyright   Eric Cheng ec10@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

//$mem_node = $PAGE->navigation->add('Mass Exam Marker', new moodle_url($CFG->wwwroot.'/local/memplugin/view.php'));
//$mem_node->make_active();
$ADMIN->add('root', new admin_category('local_memplugin', get_string('menuoption', 'local_memplugin')));
$ADMIN->add('local_memplugin', new admin_externalpage('Massive Exam Marker', get_string('pluginname', 'local_memplugin'), $CFG->wwwroot.'/local/memplugin/view.php', 'local/memplugin:add'));



?>
