<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
require_once($CFG->dirroot.'/local/memplugin/stats_class.php');

	// So basically we have a edited database:
	// Stores each page of the pdf onto database as pdf BLOB OR as just IMAGE blobs and give them back the PDFS as needed??
	// CHANGE the database pdf pages to have another attribute = page numbers. We gonna make it so it accepts and stores image blobs.
	// make so it stores the page and comments seperately. (enables easier erasing with clearrect easier).
	
	$base64 = $_POST['imgsavdat'];
	$base64 = str_ireplace("data:image/png;base64,", "", $base64);
	$imageBlob = base64_decode($base64);
	
	$t = time();
	$humanTime = date("h:i:sa",$t);
	echo "Last save performed at ".$humanTime;
	
	//test
	//echo '<img src="data:image/png;base64,'.$base64.'"/>';
	
?>

