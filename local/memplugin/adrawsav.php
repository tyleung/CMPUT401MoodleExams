<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
require_once($CFG->dirroot.'/local/memplugin/stats_class.php');

	$base64 = $_POST['imgsavdat'];
	
	// NOW here convert image to pdf again!!!
	
	/*
	$base64 = str_ireplace("data:image/png;base64,", "", $base64);
	
	$imageBlob = base64_decode($base64);

    $imagick = new Imagick();
    $imagick->readImageBlob($imageBlob);

    header("Content-Type: image/png");
    echo $imagick;
    */
	
	echo "Saved back to pdf!";
	
	// So basically we have a edited database:
	// Stores each page of the pdf onto database as pdf BLOB OR as just IMAGE blobs and give them back the PDFS as needed??
	// CHANGE the database pdf pages to have another attribute = page numbers. We gonna make it so it accepts and stores image blobs.
?>

