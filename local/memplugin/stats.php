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

require_login();
require_capability('local/memplugin:add', context_system::instance());
require_once($CFG->dirroot.'/local/memplugin/stats_class.php');
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/stats.php');

echo $OUTPUT->header();

$calc = new stats();

$test_dat1 = array(1,6,4,7); //1,4,6,7 Mean = 4.5, Median = 5, stdDev = 2.64575
$test_dat2 = array(1,4,6,7,3); //1,3,4,6,7 Mean = 4.2, Median = 4, stdDev = 2.38747

echo 'test data 1: 1,6,4,7</br>';
echo 'test data 2: 1,4,6,7,3</br>';
echo 'Mean test data1: '.$calc->mean($test_dat1).'</br>';
echo 'Mean test data2: '.$calc->mean($test_dat2).'</br>';
echo 'Median test data1: '.$calc->median($test_dat1).'</br>';
echo 'Median test data2: '.$calc->median($test_dat2).'</br>';
echo 'Spread/Standard Deviation test data1: '.$calc->spread($test_dat1).'</br>';
echo 'Spread/Standard Deviation test data2: '.$calc->spread($test_dat2).'</br>';

$data = array(5.610, 15.940, 30.670, 40.940, 53.650, 39.561, 40.1635, 10.236, 15.2, 5.0);
$datastr = serialize($data);
$total_mark = 76;
$interval = $total_mark/10;
echo '<img src="graph_make_class.php?max_marks='.$total_mark.'&data='.$datastr.'&interval='.$interval.'" alt="Graph Results"></br>';

echo $OUTPUT->footer();

?>
