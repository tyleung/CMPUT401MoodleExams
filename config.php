<?php  // Moodle configuration file
unset($CFG);
global $CFG;
$CFG = new stdClass();
$CFG->phpunit_prefix = 'phpu_';
$CFG->phpunit_dataroot = '/var/moodletestdata'; // I HAVE NO IDEA WHAT TO DO
$CFG->behat_prefix = 'b_';
$CFG->behat_dataroot = '/var/behatdata';
$CFG->behat_wwwroot = 'http://199.116.235.48/behat';
$CFG->dbtype    = 'mysqli';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'localhost';
$CFG->dbname    = 'moodledb';
$CFG->dbuser    = 'moodleuser';
$CFG->dbpass    = 'moodlepassword';
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => 3306,
  'dbsocket' => '',
);
$CFG->wwwroot   =  'http://192.168.56.101/moodle';
$CFG->dataroot  = '/var/moodledata';
$CFG->admin     = 'admin';
$CFG->directorypermissions = 0777;
require_once(dirname(__FILE__) . '/lib/setup.php');
// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
