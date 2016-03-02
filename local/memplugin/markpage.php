<?php
global $PAGE, $CFG, $DB;
require_once('../../config.php');

require_login();
require_capability('local/memplugin:add', context_system::instance());
require_once($CFG->dirroot.'/local/memplugin/qrtest_class.php');
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/markpage.php');


echo $OUTPUT->header();

if (isset($_GET['booklet'])) {
	echo 'booklet: '.$_GET['booklet'];
	echo '<br>';
}
if (isset($_GET['page'])) {
	echo 'page: '.$_GET['page'];
}

echo $OUTPUT->footer();

?>