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
 * This page is for the partial search of students, who you then can assign a booklet-id.
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
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/adrawpdftest.php');

//$loaded = '<script>window.onload = initDrw(); </script>';
$loaded = '<script type="text/javascript"> window.onload = draw_class.init();	</script>';
$loaded2 = '<script type="text/javascript"> window.onload = mark_tools.init();   </script>';

display_draw($loaded);
mark_tools($loaded2);

/**
Display search method prints everything on screen to actually display everything, and links the Javascript file.
*/
function display_draw($js) {
	global $OUTPUT;
	// using google hosted jquery https://developers.google.com/speed/libraries/#jquery
	//echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>';
	echo $OUTPUT->header();
	echo "THIS IS TEST YEH<br>";
	echo '<script trype="text/javascript" src="js/marktools.js"></script>';
	echo '
			<style>
			ul.toolbar {
				list-style-type: none;
				margin: 0;
				padding: 0;
				overflow: hidden;
				background-color: #333;
			}
			li.toolbaritem {
				float: left;
			}
			li.toolbaritem a {
				display: block;
				color: white;
				text-align: center;
				padding: 14px 16px;
				text-decoration: none;
			}
			li.toolbaritem a:hover {
				background-color: #111;
			}
			.active {
    			background-color: #4CAF50;
			}
			</style>

			<div id="markmenu">
			  <div id="toolbardiv">
				<ul class="toolbar">
				  <li class="toolbaritem"><a><img src = "pix/freehandicon.png" width="30" height="30"></a></li>
				  <li class="toolbaritem"><a><img src = "pix/stamps/tick.png" width="30" height="30"></a></li>
				  <li class="toolbaritem"><a><img src = "pix/stamps/cross.png" width="30" height="30"></a></li>
				  <li class="toolbaritem"><a><img src = "pix/eraseicon.png" width="30" height="30"></a></li>
				  <li class="toolbaritem"><a><img src = "pix/commenticon.png" width="30" height="30"></a></li>
				</ul>
			  </div>
			</div>
			';
	echo '<script type="text/javascript" src="js/draw.js"></script>
    	<canvas id="canvas" width="500" height="300" ></canvas>';
	echo $js;
	echo $OUTPUT->footer();
}
?>
