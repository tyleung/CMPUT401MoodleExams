<?php

global $CFG;
require_once($CFG->dirroot.'/local/memplugin/mme_exams_submission.php');

class local_memplugin_mme_exams_submission_testcase extends basic_testcase {
    public function test_get_data_QR() {
    	global $CFG;
        $scan = new MME_exam_submission($CFG->dirroot.'/local/memplugin/fnl2012qr.pdf');
        $this->assertEquals($scan->get_data(),"FALL2012FINAL:#1 pg:1");
    }

    public function test_get_data_NOQR() {
    	global $CFG;
        $scan = new MME_exam_submission($CFG->dirroot.'/local/memplugin/fnl2012.pdf');
        $this->assertEquals($scan->get_data(),"Could not read QRcode");
    }
 }
 ?>
