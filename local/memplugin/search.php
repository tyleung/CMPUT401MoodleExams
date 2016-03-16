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
 * @subpackage  demo_plug-in
 * @copyright   Eric Cheng ec10@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $PAGE, $CFG, $DB;
require_once('../../config.php');
require_once($CFG->dirroot.'/local/memplugin/search_form.php');

require_login();
require_capability('local/memplugin:add', context_system::instance());
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/search.php');

$datstudents = array();
$enrolled = enrol_get_users_courses($USER->id, true,'*', 'visible DESC, sortorder ASC');
foreach($enrolled as $course) {
	//https://docs.moodle.org/dev/Enrolment_API
	//get_enrolled_users(context $context, $withcapability = '', $groupid = 0, $userfields = 'u.*', $orderby = '', $limitfrom = 0, $limitnum = 0)
	//id is also key. so array_merge overrides is ok.
	$tmp = get_enrolled_users(context_course::instance($course->id),'', 0, 'u.*');
	$datstudents = array_merge($datstudents, $tmp);
}
$js = '<script>
var data = '.json_encode($datstudents).';
window.onload = init;

function init() {
	aside = document.getElementById("aside");
	//aside.innerHTML = JSON.stringify(data);
	aside.innerHTML = "No search performed yet.";
}

function getSearch() {
	var a = document.getElementById("inputid").value;
	return a.toLowerCase();
}
function doodo() {
	var found = new Array();
	var find = getSearch();
	// id is the unique key in the DB, thus not included here.
	var toCheck = new Array("firstname", "middlename", "alternatename", "lastname", "email", "idnumber", "username");
	
	for(i=0;i<data.length;i++) {
		for(k=0;k<toCheck.length;k++) {
			if(JSON.stringify(data[i][toCheck[k]]).toLowerCase().includes(getSearch())) {
				found.push(data[i]);
				break;
			}
		}
		
		// if already found go to next data.
		if(found.lastIndexOf(data[i]) != -1) {
			continue;
		}
		
		// Special case, first name AND last name
		var strFirstName = JSON.stringify(data[i][toCheck[0]]).toLowerCase();
		var strLastName = JSON.stringify(data[i][toCheck[3]]).toLowerCase();
		var fullName = strFirstName + " " + strLastName;
		// Removes the "s from the string. 
		fullName = fullName.replace(/\"/g, "");
		if(fullName.includes(getSearch())) {
			found.push(data[i]);
		}
	}

	aside.innerHTML = JSON.stringify(found);
		
}

</script>
<input id="inputid" name="selectname" onchange="doodo()"></input>';

echo $OUTPUT->header();
echo "Search plz. Thank u.";
echo $js;
echo '<div id="aside"></div>';


echo $OUTPUT->footer();

?>
