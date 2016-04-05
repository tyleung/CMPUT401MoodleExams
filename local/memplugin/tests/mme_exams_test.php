<?php

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
