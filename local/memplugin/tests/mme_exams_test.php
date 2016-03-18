<?php

global $CFG;
require_once($CFG->dirroot.'/local/memplugin/mme_exams.php');

// Can't test exam generation atm as we cannot save the resulting pdf to file.
class local_memplugin_mme_exams_testcase extends basic_testcase {
    public function test_get_QRcode_string() {
        $exam = new MME_exams("test_sample.pdf","test_exam");
        $this->assertEquals($exams->get_Qrcode_string(1,1),"test_exam:#1 pg:1"); //normal case
        $this->assertEquals($exams->get_Qrcode_string(0,0),"test_exam:#0 pg:0");
    }

    public function test_get_QRcode_data() {
    	$exam = new MME_exams("test_sample.pdf","test_exam");
    	$data = serialize(array('page_number'=>1,'exam_number'=>1,'name'=>"test_exam"));
    	$this->assertEquals($exams->get_Qrcode_data(1,1),$data);
    }
 }
 ?>
