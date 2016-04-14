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
 * @copyright   Ryan Satyabrata satyabra@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
	$course = intval($_GET['course_id']);
	$sid = intval($_GET['sid']);
	$bid = intval($_GET['booklet_id']);
	$page = intval($_GET['page']);
	
	$hash = $DB->get_record_sql('SELECT {mem_booklet_data}.booklet_id, student_id, exam_hash
							FROM {mem_booklet_data}
							WHERE {mem_booklet_data}.booklet_id=?
							AND {mem_booklet_data}.course_id=?
							', array($bid, $course));
	
	$DB->set_field("mem_booklet_data", "student_id", $sid, array("booklet_id"=>$bid, "exam_hash"=>$hash->exam_hash, "course_id"=>$course));

	redirect($CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page.'&course_id='.$course);
	
	// Test
	//echo "adding student".$sid."<br>";
	//echo "booklet ".$bid."<br>";
	//echo "page ".$page."<br>";
	//echo '<a href="'.$CFG->wwwroot.'/local/memplugin/adrawpdf.php?booklet_id='.$bid.'&page='.$page.'">GO BACK</a>'
?>


