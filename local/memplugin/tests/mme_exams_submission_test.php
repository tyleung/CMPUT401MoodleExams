<?php

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
            'max_pages' => 7,
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
