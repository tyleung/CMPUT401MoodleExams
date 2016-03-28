<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->phpunit_prefix = 'phpu_';
$CFG->phpunit_dataroot = 'C:\xampp\moodletestdata'; // I HAVE NO IDEA WHAT TO DO

$CFG->behat_prefix = 'b_';
$CFG->behat_dataroot = 'C:\xampp\behatdata';
$CFG->behat_wwwroot = 'http://localhost/behat';

$CFG->dbtype    = 'mysqli';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'localhost';
$CFG->dbname    = 'moodle';
$CFG->dbuser    = 'root';
$CFG->dbpass    = 'password';
$CFG->prefix    = 'mdl_';

$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => 3306,
  'dbsocket' => '',
);


$CFG->wwwroot   =  'http://localhost/CMPUT401MoodleExams';
$CFG->dataroot  = 'C:\xampp\moodledata';
$CFG->admin     = 'admin';

$CFG->directorypermissions = 0777;

require_once(dirname(__FILE__) . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
