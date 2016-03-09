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
 * Initial page for the plug-in
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $PAGE, $CFG, $DB;
require_once('../../config.php');
require($CFG->dirroot.'/lib/tablelib.php');

require_login();
require_capability('local/memplugin:add', context_system::instance());
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/results.php');


/*
echo $OUTPUT->header();

echo '<table>';
echo '<tr><th>Name</th><th>Student ID</th><th>Mark</th></tr>';

$users_rs = $DB->get_recordset('user');

foreach($users_rs as $user) {
	echo '<tr>';
	echo '<td>';
	print_r($user->firstname . ' ' . $user->lastname);
	//echo '<br><br>';
	echo '</td>';
	echo '</tr>';
}

$users_rs->close();

echo '</table>';


echo $OUTPUT->footer();

*/

$download = optional_param('download', '', PARAM_ALPHA);

$table = new table_sql('uniqueid');
$table->is_downloading($download, 'test', 'testing123');

if (!$table->is_downloading()) {
    // Only print headers if not asked to download data
    // Print the page header
    $PAGE->set_title('Results');
    $PAGE->set_heading('Results');
    $PAGE->navbar->add('Exam Results', new moodle_url($CFG->wwwroot.'/local/memplugin/results.php'));
    echo $OUTPUT->header();
}

// Work out the sql for the table.
$table->set_sql('firstname, lastname, idnumber', "{user}", '1');

$table->define_baseurl($CFG->wwwroot.'/local/memplugin/results.php');

$table->out(40, true);

if (!$table->is_downloading()) {
    echo $OUTPUT->footer();
}


?>
