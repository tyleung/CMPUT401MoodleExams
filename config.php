<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'mysqli';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'localhost';
$CFG->dbname    = 'rubricmoodle';
$CFG->dbuser    = 'rubricteam';
$CFG->dbpass    = 'fourowon';
$CFG->prefix    = 'mdl1_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => 3306,
  'dbsocket' => '',
);


$CFG->wwwroot   = 'http://199.116.235.48/dev/';

$CFG->dataroot  = '/var/moodledata';
$CFG->admin     = 'admin';

$CFG->directorypermissions = 0777;

require_once(dirname(__FILE__) . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
