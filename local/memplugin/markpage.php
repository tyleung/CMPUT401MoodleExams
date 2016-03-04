<?php
global $PAGE, $CFG, $DB;
require_once(dirname(__FILE__).'/../../../../config.php');

require_once($CFG->dirroot.'/local/memplugin/qrtest_class.php');
require_once($CFG->dirroot.'/local/memplugin/marklib.php');

// parameter required
$id = required_param('id', PARAM_INT);
$submissionid = optional_param('submissionid', 0, PARAM_INT);

$url = new moodle_url('/local/memplugin/markpage.php', array('submissionid'=>$submissionid,
                                                                       'id' => $id));
$PAGE->set_url($url);

require_login();
require_capability('local/memplugin:add', context_system::instance());//??

$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));


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


<?php


//if (!is_null($rownum)) {
//    $url->param('rownum', $rownum);
//}
//if (!is_null($returnparams)) {
//    $url->param('returnparams', $returnparams);
//}
//$cm = get_coursemodule_from_id('assign', $id, 0, false, MUST_EXIST);
//$course = $DB->get_record('course', array('id' => $cm->course), '*', MUST_EXIST);

//$PAGE->set_url($url);
//require_login($course, false, $cm);

//$context = context_module::instance($cm->id);
//require_capability('mod/assign:grade', $context);

$assignment = new assign($context, $cm, $course);
$feedbackpdf = new assign_feedback_pdf($assignment, 'feedback_pdf');

if ($action == 'showprevious') {
    $feedbackpdf->show_previous_comments($submissionid);
} else if ($action == 'showpreviouspage') {
    $feedbackpdf->edit_comment_page($submissionid, $pageno, false);
} else if ($action == 'clearcache') {
    $feedbackpdf->clear_image_cache($submissionid, optional_param('nextaction', null, PARAM_ALPHA));
} else if ($action == 'browseimages') {
    $feedbackpdf->browse_images($submissionid, $pageno);
} else {
    $feedbackpdf->edit_comment_page($submissionid, $pageno);
}
