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
$PAGE->set_heading(get_string('gridtitle', 'local_memplugin'));
$PAGE->set_url($CFG->wwwroot.'/local/memplugin/grid.php');

$course_id = 3;
if($_GET['course_id']) {
    $course_id = $_GET['course_id'];
}

// Breadcrumbs
$memhomenode = $PAGE->navigation->add(get_string('memhome', 'local_memplugin'), new moodle_url('memhome.php'));
$gridnode = $memhomenode->add(get_string('grid', 'local_memplugin'), new moodle_url('grid.php?course_id='.$course_id));
$gridnode->make_active();

echo $OUTPUT->header();

$num_booklets = $DB->count_records_select('mem_booklet_data', 'course_id=?', array($course_id));
$num_pages = $DB->get_field_select('mem_booklet_data', 'max_pages', 'course_id=?', array($course_id), IGNORE_MULTIPLE);

// Each grid-item is 110px wide. Added 10px to account for the grid margins
$grid_width = (($num_pages + 2) * 110) + 10;
?>

<link rel="stylesheet" href="css/isotope-grid.css">

<div>
<h3 class="sort-group-title">Sort</h3>
<div class="sort-group-booklet">
	<a href="javascript:void(0);" data-sort="bookletAsc" class="current">Booklet Asc</a>
	<a href="javascript:void(0);" data-sort="bookletDec">Booklet Dec</a>
</div>
<div class="sort-group-page">
	<a href="javascript:void(0);" data-sort="booklet,pageAsc" class="current">Page Asc</a>
	<a href="javascript:void(0);" data-sort="booklet,pageDec">Page Dec</a>
</div>
</div>

<div class="grid-outer" style="width:<?php echo $grid_width; ?>px; float: left;">
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
    
    echo '<div class="grid-item-page-nums"><p class="page-nums">Total</p></div>'."\n";
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
	global $DB;

	//$booklet_id = intval(current($rec_check)->booklet_id);
	$rec_books = $DB->get_records_sql('SELECT booklet_id, max_pages, exam_hash
										FROM {mem_booklet_data} 
										WHERE {mem_booklet_data}.course_id=?', array($course_id));
										
	echo '<div class="grid">'."\n";
	$i=1;
	foreach ($rec_books as $bk) {
		echo '<div class="grid-item-booklet-nums">'."\n";
		echo "\t".'<p class="booklet-nums">B<span class="booklet-num">'.$i.'</span></p>'."\n";
		echo '</div>'."\n";

        // $rs contains num_pages number of records
        //$rs = $GLOBALS['DB']->get_recordset_select('mem_pages', 'booklet_id=?', array($i));
        $booklet_total = 0;
        $maxpg = intval($bk->max_pages);
        
        $rec_check = $DB->get_records_sql('SELECT page_id, page_num, is_marked, page_marks, page_marks_max
									FROM {mem_pages}
									WHERE exam_hash=?
									AND booklet_id=?'
									, array($bk->exam_hash, $bk->booklet_id));
        next($rec_check);
        for ($k = 1; $k <= $maxpg; $k++) {
            $is_marked = intval(current($rec_check)->is_marked) == 1 ? 'marked' : 'unmarked';
            $bid = intval($bk->booklet_id);
            $pg = intval(current($rec_check)->page_num);
			echo '<a href="adrawpdf.php?course_id='.$course_id.'&booklet_id='.$bid.'&page='.$pg.'" class="grid-item-select">'."\n";
			echo '<div class="grid-item '.$is_marked.'">'."\n";
			echo "\t".'<p class="mark">'.current($rec_check)->page_marks.'</p>'."\n";
			echo "\t".'<p hidden class="booklet">B<span class="booklet-num">'.$i.'</span></p>'."\n";
			echo "\t".'<p class="page">P<span class="page-num">'.$pg.'</span></p>'."\n";
			echo '</div>'."\n";
			echo '</a>'."\n";
            $booklet_total += intval(current($rec_check)->page_marks);
            next($rec_check);
		}
        
        // Totals column
        $max_booklet_mark = intval(current($rec_check)->page_marks_max);
        echo '<div class="grid-item-t" style="margin: 5px">'."\n";
        echo "\t".'<p class="mark">'.$booklet_total.'/'.$max_booklet_mark.'</p>'."\n";
        echo "\t".'<p hidden class="booklet">B<span class="booklet-num">'.$i.'</span></p>'."\n";
        echo '</div>'."\n";
        $i += 1;
	}

	echo '</div>'."\n";
}
?>
