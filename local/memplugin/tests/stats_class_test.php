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
require_once($CFG->dirroot.'/local/memplugin/stats_class.php');

class local_stats_class_testcase extends basic_testcase {
    public function test_mean(){
        $stats = new stats();

        $data_array = array(1,2); #Normal Case
        $this->assertEquals($stats->mean($data_array),1.5);

        $data_array = array(1); #single element
        $this->assertEquals($stats->mean($data_array),1);

        $data_array = array(1,-3); #Negatives
        $this->assertEquals($stats->mean($data_array),-0.5);

        $data_array = array(0.1,0.3); #Floats
        $this->assertEquals($stats->mean($data_array),0.2);

        $data_array = array(); #Empty Array Case (don't think it's handled properly yet.)
        $this->assertEquals($stats->mean($data_array),0);
    }

    public function test_median(){
        $stats = new stats();

        $data_array = array(1); #Single element
        $this->assertEquals($stats->median($data_array),1);

        $data_array = array(1,5,7); #Odd #element
        $this->assertEquals($stats->median($data_array),5);

        $data_array = array(1,2,4,4); #Even # element with int result
        $this->assertEquals($stats->median($data_array),3);

        $data_array = array(1,2,3,4); #Even # element with float result
        $this->assertEquals($stats->median($data_array),2.5);

        $data_array = array(); #empty array
        $this->assertEquals($stats->median($data_array),-1);        
    }

    public function test_spread(){
        $stats = new stats();

        $data_array = array(10,20);
        $this->assertEquals(round($stats->spread($data_array),2),7.07);

        $data_array = array(1); #Single element, will divide by 0
        $this->assertEquals($stats->spread($data_array),0);

        $data_array = array(); #Empty array, ???
        $this->assertEquals($stats->spread($data_array),0);
    }

    public function test_min(){
        $stats = new stats();

        $data_array = array(1,2);
        $this->assertEquals($stats->min($data_array),1);


        $data_array = array(-1,-2);
        $this->assertEquals($stats->min($data_array),-2);

        $data_array = array(); #error?
        $this->assertEquals($stats->min($data_array),0);
    }

    public function test_max(){
        $stats = new stats();

        $data_array = array(1,2);
        $this->assertEquals($stats->max($data_array),2);


        $data_array = array(-1,-2);
        $this->assertEquals($stats->max($data_array),-1);

        $data_array = array(); #error?
        $this->assertEquals($stats->max($data_array),-1);
    }

    public function test_count_grades(){
        $stats = new stats();

        $marks_array = array(1,2,2,3,3,4,4,4,5,5,5,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10);
        $expected_count = array(0,1,2,2,3,3,3,4,4,4,4);
        $this->assertEquals($stats->count_grades($marks_array,10,10),$expected_count);
    }

 }
 ?>
