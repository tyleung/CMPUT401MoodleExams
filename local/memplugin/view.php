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
 * Grid view for an exam.
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $PAGE, $CFG, $DB;
require_once('../../config.php');

require_login();
require_capability('local/memplugin:add', context_system::instance());
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/view.php');
$PAGE->requires->js_init_call('M.local_memplugin.init', null, false, $jsmodule);

header('Location: ' . $CFG->wwwroot.'/local/memplugin/memhome.php');
die();

//echo $OUTPUT->header();
/*
echo "This page is our main page. Tests here?";
echo '<a href=stats.php>Statistics Page</a></br>';
echo '<a href=qrtest.php> QR test plz. </a>';
echo '<button class="censor" onclick = "javascript:addtext()"> testtest </button>';
echo '<script type = "javascript">
	funtion addtext() {
		var elem = document.getElementByClassName("censor")[0];
		var textElem = document.createElement("div");
		textElem.textContent = "lalala";
		elem.appendChild(textElem);
	}</script>';
*/

//echo $OUTPUT->footer();

?>
