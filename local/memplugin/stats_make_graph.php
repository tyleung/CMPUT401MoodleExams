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

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
require_once $CFG->dirroot.'/lib/graphlib.php';

/** Creates a new graph image using the graphlib library. */

$line = new graph(400,280);
$line->parameter['title']   = "Results";
$line->parameter['x_label'] = "Score (%)";
$line->parameter['y_label_left'] = "Students";
$line->parameter['x_label_angle'] = 0;

$line->x_data = range(0, 100, $_GET['interval']);

$line->y_data['y_data_values'] = unserialize($_GET['data']);
$line->y_format['y_data_values'] = array('colour' => 'blue', 'bar' => 'fill', 'shadow_offset' => 3);
$line->y_order = array('y_data_values');

$line->parameter['y_min_left'] = 0; // lowest percentage.
$line->parameter['y_max_left'] = 10; // get highest percentage occurence.
$line->parameter['x_min'] = 0; // minimum mark
$line->parameter['x_max'] = 100; // maximum mark

$line->draw();

?>
