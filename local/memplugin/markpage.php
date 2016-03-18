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
 * The entry point for annotating a PDF
 *
 * @package   mod_assign
 * @subpackage assignsubmission_pdf
 * @copyright 
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $CFG, $DB, $PAGE;
require_once('../../config.php');
require_once($CFG->dirroot.'/mod/assign/locallib.php');
require_once($CFG->dirroot.'/mod/assign/submission/pdf/lib.php');

$id   = required_param('id', PARAM_INT);
$submissionid = optional_param('submissionid', 0, PARAM_INT);
$pageno = optional_param('pageno', 1, PARAM_INT);
$action = optional_param('action', null, PARAM_TEXT);
$rownum = optional_param('rownum', null, PARAM_INT);
$returnparams = optional_param('returnparams', null, PARAM_TEXT);

$url = new moodle_url($CFG->wwwroot.'/local/memplugin/markpage.php');
if (!is_null($rownum)) {
    $url->param('rownum', $rownum);
}
if (!is_null($returnparams)) {
    $url->param('returnparams', $returnparams);
}
$cm = get_coursemodule_from_id('assign', $id, 0, false, MUST_EXIST);
$course = $DB->get_record('course', array('id' => $cm->course), '*', MUST_EXIST);

$PAGE->set_url($url);
require_login();

$context = context_module::instance($cm->id);

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
