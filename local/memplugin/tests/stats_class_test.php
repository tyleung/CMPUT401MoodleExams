<?php

global $CFG;
require_once($CFG->dirroot.'/local/memplugin/stats_class.php');

class local_stats_class_testcase extends basic_testcase {
    public function test_mean(){
        $stats = new stats();

        $data_array = {1,2}; #Normal Case
        $this->assertEquals($stats->mean($data_array),1.5);

        $data_array = {1}; #single element
        $this->assertEquals($stats->mean($data_array),1);

        $data_array = {1,-3}; #Negatives
        $this->assertEquals($stats->mean($data_array),-0.5);

        $data_array = {0.1,0.3}; #Floats
        $this->assertEquals($stats->mean($data_array),0.2);

        $data_array = {}; #Empty Array Case (don't think it's handled properly yet.)
        $this->assertEquals($stats->mean($data_array),0);
    }

    public function test_median(){
        $stats = new stats();

        $data_array = {1}; #Single element
        $this->assertEquals($stats->median($data_array),1);

        $data_array = {1,5,7}; #Odd #element
        $this->assertEquals($stats->median($data_array),5);

        $data_array = {1,2,4,4}; #Even # element with int result
        $this->assertEquals($stats->median($data_array),3);

        $data_array = {1,2,3,4}; #Even # element with float result
        $this->assertEquals($stats->median($data_array),2.5);

        $data_array = {}; #empty array
        $this->assertEquals($stats->median($data_array),-1);        
    }

    public function test_spread(){
        $stats = new stats();

        $data_array = {10,20};
        $this->assertEquals(round($stats->spread($data_array),2),7.07);

        $data_array = {1}; #Single element, will divide by 0
        $this->assertEquals($stats->spread($data_array),0);

        $data_array = {}; #Empty array, ???
        $this->assertEquals($stats->spread($data_array),0);
    }

    public function test_min(){
        $stats = new stats();

        $data_array = {1,2};
        $this->assertEquals($stats->min($data_array),1);


        $data_array = {-1,-2};
        $this->assertEquals($stats->min($data_array),-2);

        $data_array = {}; #error?
        $this->assertEquals($stats->min($data_array),0);
    }

    public function test_max(){
        $stats = new stats();

        $data_array = {1,2};
        $this->assertEquals($stats->min($data_array),2);


        $data_array = {-1,-2};
        $this->assertEquals($stats->min($data_array),-1);

        $data_array = {}; #error?
        $this->assertEquals($stats->min($data_array),0);
    }

    public function test_count_grades(){
        $stats = new stats();

        $marks_array = {1,2,2,3,3,4,4,4,5,5,5,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10};
        $expected_count = {0,1,2,2,3,3,3,4,4,4,4};
        $this->assertEquals($stats->count_grades($marks_array,10,10),$expected_count);
    }

 }
 ?>
