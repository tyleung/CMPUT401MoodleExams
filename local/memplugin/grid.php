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

echo $OUTPUT->header();

// TODO: Get the number of booklets and pages.
$num_booklets = 10;
$num_pages = 5;

// Each grid-item is 110px wide. Added 10px to account for the grid margins
$grid_width = ($num_pages * 110) + 10;
?>

<link rel="stylesheet" href="css/isotope-grid.css">

<h3 class="filter-group-title">Filter</h3>
<div class="filter-group">
	<a href="#" data-filter="*" class="current">All Categories</a>
	<a href="#" data-filter=".people">People</a>
	<a href="#" data-filter=".places">Places</a>
	<a href="#" data-filter=".food">Food</a>
	<a href="#" data-filter=".objects">Objects</a>
</div>

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
<div class="grid" >
	
<?php

$statuses = array('finished', 'unfinished');

for ($i = 0; $i < $num_booklets; $i++) {
	for ($j = 0; $j < $num_pages; $j++) {
		$status = $statuses[array_rand($statuses)];
		echo '<a href="markpage.php?booklet='.$i.'&page='.$j.'" class="grid-item-select">'."\n";
		echo '<div class="grid-item '.$status.'">'."\n";
		echo "\t".'<p class="mark">0</p>'."\n";
		echo "\t".'<p class="booklet">booklet '.$i.'</p>'."\n";
		echo "\t".'<p class="page">page '.$j.'</p>'."\n";
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
