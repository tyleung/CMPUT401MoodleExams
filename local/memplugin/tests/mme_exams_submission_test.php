<?php

global $CFG;
require_once($CFG->dirroot.'/local/memplugin/mme_exams_submission.php');

class local_memplugin_mme_exams_submission_testcase extends advanced_testcase {
    public function test_get_data_QR() {
    	global $CFG;
        $this->resetAfterTest(true);
        $data = file_get_contents($CFG->dirroot.'/local/memplugin/fnl2012qr.png');
        $scan = new MME_exam_submission($data,0);
        $this->assertEquals($scan->get_data(),"TEST:#1 pg:0/5");
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
