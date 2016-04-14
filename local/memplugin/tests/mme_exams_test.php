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
 * Main page of the plugin. 
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Jaeyoon Kim jaeyoon1@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $CFG;
require_once($CFG->dirroot.'/local/memplugin/mme_exams.php');

// Can't test exam generation atm as we cannot save the resulting pdf to file.
class local_memplugin_mme_exams_testcase extends basic_testcase {
    public function test_get_QRcode_string() {
        global $CFG;
        $exam_path = $CFG->dirroot.'/local/memplugin/fnl2012.pdf';
        $exam_data = file_get_contents($exam_path);
        $exam = new MME_exams($exam_data,"test_exam");
        $this->assertEquals($exam->get_Qrcode_string(1,1),"test_exam:#1 pg:1/5"); //normal case
        $this->assertEquals($exam->get_Qrcode_string(0,0),"test_exam:#0 pg:0/5");
        $this->assertEquals($exam->get_Qrcode_string(1,1,1),"test_exam:#1 pg:1/6");
    }

    public function test_get_serialized_data() {
        global $CFG;
        $exam_path = $CFG->dirroot.'/local/memplugin/fnl2012.pdf';
        $exam_data = file_get_contents($exam_path);
        $exam_name = "test_exam";
        $exam = new MME_exams($exam_data,$exam_name);

        $data = array(
			'page_number' => 1,
			'exam_number' => 1,
			'max_pages' => 5,
			'name' => $exam_name,
			'md5' => md5($exam_data),
		);

		$this->assertEquals($exam->get_serialized_data(1,1,0),serialize($data));

    }
 }
 ?>
