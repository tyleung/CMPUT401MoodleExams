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
 * Grid view for an exam.
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Terence Leung tyleung@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
 
global $PAGE, $CFG, $DB;
require_once('../../config.php');

require_login();
require_capability('local/memplugin:add', context_system::instance());
$PAGE->set_context(context_system::instance());
$PAGE->set_pagelayout('standard');
$PAGE->set_title(get_string('pluginname', 'local_memplugin'));
$PAGE->set_heading(get_string('pluginname', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/grid.php');
$gridnode = $PAGE->navigation->add(get_string('grid', 'local_memplugin'), new moodle_url('grid.php'));
$gridnode->make_active();

echo $OUTPUT->header();

// TODO: Get the course id, number of booklets and pages.
$course_id = 2;
$num_booklets = 15;
$num_pages = 5;

// Each grid-item is 110px wide. Added 10px to account for the grid margins
$grid_width = (($num_pages + 1) * 110) + 10;
?>

<link rel="stylesheet" href="css/isotope-grid.css">

<h3 class="sort-group-title">Sort</h3>
<div class="sort-group-booklet">
	<a href="javascript:void(0);" data-sort="bookletAsc" class="current">Booklet Asc</a>
	<a href="javascript:void(0);" data-sort="bookletDec">Booklet Dec</a>
</div>
<div class="sort-group-page">
	<a href="javascript:void(0);" data-sort="booklet,pageAsc" class="current">Page Asc</a>
	<a href="javascript:void(0);" data-sort="booklet,pageDec">Page Dec</a>
</div>

<div class="grid-outer" style="width:<?php echo $grid_width; ?>px">
<?php
create_grid_headers($num_pages);
create_grid($course_id, $num_booklets, $num_pages);
?>
</div>

<script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
<script src="js/isotope.pkgd.min.js" type="text/javascript"></script> 
<script src="js/isotope-grid.js" type="text/javascript"></script>

<?php
echo $OUTPUT->footer();

/**
 * Creates the grid header indicating page numbers.
 *
 * @param int $num_pages The number of pages in the exam.
 *
 * @return void
 */
function create_grid_headers($num_pages) {
	echo '<div class="grid-page-nums">'."\n";
	echo '<div class="grid-item-page-nums"></div>'."\n";
	for ($i = 1; $i <= $num_pages; $i++) {
		echo '<div class="grid-item-page-nums">'."\n";
		echo "\t".'<p class="booklet-num"></p>'."\n";
		echo "\t".'<p class="page-nums">P<span class="page-num">'.$i.'</span></p>'."\n";
		echo '</div>'."\n";
	}
	
	echo '</div>'."\n";
}

/**
 * Creates the grid with exam booklets running row-wise and pages column-wise.
 *
 * @param int $course_id The course id.
 * @param int $num_booklets The number of exam booklets in the course.
 * @param int $num_pages The number of pages in the exam.
 *
 * @return void
 */
function create_grid($course_id, $num_booklets, $num_pages) {
	echo '<div class="grid">'."\n";
	$statuses = array('finished', 'unfinished');

	for ($i = 1; $i <= $num_booklets; $i++) {
		echo '<div class="grid-item-booklet-nums">'."\n";
		echo "\t".'<p class="booklet-nums">B<span class="booklet-num">'.$i.'</span></p>'."\n";
		echo '</div>'."\n";
		for ($j = 1; $j <= $num_pages; $j++) {
			$status = $statuses[array_rand($statuses)];
			echo '<a href="markpage.php?course_id='.$course_id.'&booklet='.$i.'&page='.$j.'" class="grid-item-select">'."\n";
			echo '<div class="grid-item '.$status.'">'."\n";
			echo "\t".'<p class="mark">0</p>'."\n";
			echo "\t".'<p hidden class="booklet">B<span class="booklet-num">'.$i.'</span></p>'."\n";
			echo "\t".'<p class="page">P<span class="page-num">'.$j.'</span></p>'."\n";
			echo '</div>'."\n";
			echo '</a>'."\n";
		}
	}
	
	echo '</div>'."\n";
}
?>
