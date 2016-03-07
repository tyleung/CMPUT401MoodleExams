<?php
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

// TODO: Get the number of booklets and pages.
$num_booklets = 100;
$num_pages = 5;

// Each grid-item is 110px wide. Added 10px to account for the grid margins
$grid_width = (($num_pages + 1) * 110) + 10;
?>

<link rel="stylesheet" href="css/isotope-grid.css">

<!--
<h3 class="filter-group-title">Filter</h3>
<div class="filter-group">
	<a href="#" data-filter="*" class="current">All Categories</a>
	<a href="#" data-filter=".people">People</a>
	<a href="#" data-filter=".places">Places</a>
	<a href="#" data-filter=".food">Food</a>
	<a href="#" data-filter=".objects">Objects</a>
</div>
-->

<h3 class="sort-group-title">Sort</h3>
<div class="sort-group-booklet">
	<a href="#" data-sort="bookletAsc" class="current">Booklet Asc</a>
	<a href="#" data-sort="bookletDec">Booklet Dec</a>
</div>
<div class="sort-group-page">
	<a href="#" data-sort="booklet,pageAsc" class="current">Page Asc</a>
	<a href="#" data-sort="booklet,pageDec">Page Dec</a>
</div>


<div class="grid-outer" style="width:<?php echo $grid_width; ?>px">
<div class="grid-page-nums">
<?php
// Create the top page row
echo '<div class="grid-item-page-nums"></div>'."\n";
for ($i = 1; $i <= $num_pages; $i++) {
	echo '<div class="grid-item-page-nums">'."\n";
	echo "\t".'<p class="booklet-num"></p>'."\n";
	echo "\t".'<p class="page-nums">P<span class="page-num">'.$i.'</span></p>'."\n";
	echo '</div>'."\n";
}
?>
</div>

<div class="grid" >
	
<?php

$statuses = array('finished', 'unfinished');

for ($i = 1; $i <= $num_booklets; $i++) {
	echo '<div class="grid-item-booklet-nums">'."\n";
	echo "\t".'<p class="booklet-nums">B<span class="booklet-num">'.$i.'</span></p>'."\n";
	echo '</div>'."\n";
	for ($j = 1; $j <= $num_pages; $j++) {
		$status = $statuses[array_rand($statuses)];
		echo '<a href="markpage.php?booklet='.$i.'&page='.$j.'" class="grid-item-select">'."\n";
		echo '<div class="grid-item '.$status.'">'."\n";
		echo "\t".'<p class="mark">0</p>'."\n";
		echo "\t".'<p hidden class="booklet">B<span class="booklet-num">'.$i.'</span></p>'."\n";
		echo "\t".'<p class="page">P<span class="page-num">'.$j.'</span></p>'."\n";
		echo '</div>'."\n";
		echo '</a>'."\n";
	}
}

?>

</div>
</div>

<script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
<script src="js/isotope.pkgd.min.js" type="text/javascript"></script> 
<script src="js/isotope-grid.js" type="text/javascript"></script>

<?php
echo $OUTPUT->footer();
?>
