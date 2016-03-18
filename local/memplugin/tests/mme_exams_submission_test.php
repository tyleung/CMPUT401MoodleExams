<?php

global $CFG;
require_once($CFG->dirroot.'/local/memplugin/mme_exams_submission.php');

class local_memplugin_mme_exams_submission_testcase extends basic_testcase {
    public function test_get_data_QR() {
        $scan = new MME_exam_submission('qrtest_sample.pdf');
        $this->assertEquals($scan->get_data(),"FALL2012FINAL:#1 pg:1");
    }

    public function test_get_data_NOQR() {
        $scan = new MME_exam_submission('test_sample.pdf');
        $this->assertEquals($scan->get_data(),"Could not read QRcode");
    }
 }
 ?>
