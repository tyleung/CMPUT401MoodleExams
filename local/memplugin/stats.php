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

/* //Test data to see if Mean, Median, Spread, Min, Max work as expected.
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
echo 'Max test data1: '.$calc->max($test_dat1).'</br>';
echo 'Max test data2: '.$calc->max($test_dat2).'</br>';
echo 'Min test data1: '.$calc->min($test_dat1).'</br>';
echo 'Min test data2: '.$calc->min($test_dat2).'</br>';
*/

$raw_grades = array(1,2,5,5,0,0,0,0,23,23,20,23,20,11.5);
$total_mark = 23;
//$percentage_interval = floor(100/$total_mark);
$percentage_interval = 5;
echo $calc->graph($raw_grades, $percentage_interval, $total_mark);

echo get_string('stats_mean', 'local_memplugin').number_format($calc->mean($calc->to_percentage_array($raw_grades, $total_mark)),2).'%<br>';
echo get_string('stats_median', 'local_memplugin').number_format($calc->median($calc->to_percentage_array($raw_grades, $total_mark)),2).'%<br>';
echo get_string('stats_spread', 'local_memplugin').number_format($calc->spread($calc->to_percentage_array($raw_grades, $total_mark)), 2).'%<br>';
echo get_string('stats_max', 'local_memplugin').$calc->max( $calc->to_percentage_array($raw_grades, $total_mark) ).'%<br>';
echo get_string('stats_min', 'local_memplugin').$calc->min( $calc->to_percentage_array($raw_grades, $total_mark) ).'%<br>';

echo '<a href="csv_generate.php" alt="download csv">'.get_string('stats_download', 'local_memplugin').'</a></br>';

$user = $DB->get_record_sql('DESCRIBE {mem_exam_data}', array(1));
print_r($user);

$user = $DB->get_record_sql('DESCRIBE {mem_booklet_data}', array(1));
print_r($user);

echo $OUTPUT->footer();

?>
