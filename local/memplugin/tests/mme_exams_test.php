<?php

global $CFG;
require_once($CFG->dirroot.'/local/memplugin/mme_exams.php');

class local_memplugin_mme_exams_testcase extends basic_testcase {
     public function test_adding() {
         $this->assertEquals(2, 1+2);
     }
 }
 ?>
