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
require_once($CFG->dirroot.'/local/memplugin/mme_exams_submission.php');

class local_memplugin_mme_exams_submission_testcase extends advanced_testcase {
    public function test_get_data_QR() {
    	global $CFG;
        $this->resetAfterTest(true);
        $data = file_get_contents($CFG->dirroot.'/local/memplugin/fnl2012qr1-1.png');
        $scan = new MME_exam_submission($data,0);

        $data = array(
            'page_number' => 0,
            'exam_number' => 1,
            'max_pages' => 7.0,
            'name' => 'uwaaa',
            'md5' => '23d8db48e9886b45526663af9e478223',
        );
        $this->assertEquals($scan->get_data(),serialize($data));
    }

    public function test_get_deserialized_data_QR(){
        global $CFG;
        $this->resetAfterTest(true);
        $data = file_get_contents($CFG->dirroot.'/local/memplugin/fnl2012qr1-1.png');
        $scan = new MME_exam_submission($data,0);

        $data = array(
            'page_number' => 0,
            'exam_number' => 1,
            'max_pages' => 7,
            'name' => 'uwaaa',
            'md5' => '23d8db48e9886b45526663af9e478223',
        );

        foreach($data as $k => $v){
            $this->assertEquals($scan->get_deserialized_data()[$k],$data[$k]);
        }
    }

    public function test_get_data_NOQR() {
    	global $CFG;
        $this->resetAfterTest(true);
        $data = file_get_contents($CFG->dirroot.'/local/memplugin/NOQR.png');
        $scan = new MME_exam_submission($data,0);
        $this->assertEquals($scan->get_data(),NULL);
    }
 }
 ?>
