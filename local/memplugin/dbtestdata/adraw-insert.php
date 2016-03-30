<?php
	//defined('MOODLE_INTERNAL') || die();

	require_once '../../config.php';
	require_once($CFG->dirroot.'/local/memplugin/dbtestdata/adraw_testimages.php');

	global $PAGE, $CFG, $DB;

	$imageBlob1 = base64_decode($giraffe);
	$imageBlob2 = base64_decode($walrus);
	$imageBlob3 = base64_decode($guy);
	
	//test if actually works
	//echo '<img src="data:image/png;base64,'.base64_encode($imageBlob1).'"/><br>';
	//echo '<img src="data:image/png;base64,'.base64_encode($imageBlob2).'"/><br>';
	//echo '<img src="data:image/png;base64,'.base64_encode($imageBlob3).'"/><br>';
	

	/* <TABLE NAME="mem_pdf_files" COMMENT="Stores the binary PDF files of the marked exams.">
	<FIELDS>
	<FIELD NAME="pdf_file_id" TYPE="int" LENGTH="10" NOTNULL="true" SEQUENCE="true"/>
	<FIELD NAME="booklet_id" TYPE="int" LENGTH="10" NOTNULL="true" SEQUENCE="false"/>
	<FIELD NAME="pdf_file" TYPE="binary" NOTNULL="true" SEQUENCE="false"/>
	<FIELD NAME="page_num" TYPE="int" LENGTH="2" NOTNULL="true" SEQUENCE="false" COMMENT="The page number of the file"/>
	<FIELD NAME="pdf_comments" TYPE="binary" NOTNULL="false" SEQUENCE="false" COMMENT="the comments file that the image will have if marked."/> */

	echo "deleting records in mem_pdf_files <br>";
	$DB->delete_records("mem_pdf_files"); 
	echo "deleting done <br>";
	
	$e1 = new stdClass();
	$e1->booklet_id=1;
	$e1->pdf_file=$imageBlob1;
	$e1->page_num=1;
		
	// Walrus image too big? is there a limit???
	$e2 = new stdClass();
	$e2->booklet_id=1;
	$e2->pdf_file=$imageBlob3;
	$e2->page_num=2;
	
	$e3 = new stdClass();
	$e3->booklet_id=2;
	$e3->pdf_file=$imageBlob2;
	$e3->page_num=1;
	
	echo "inserting<br>";
	echo "e1 id=".$DB->insert_record("mem_pdf_files", $e1, true, false)."<br>";
	//echo "e2 id=".$DB->insert_record("mem_pdf_files", $e2, true, false)."<br>";
	echo "e3 id=".$DB->insert_record("mem_pdf_files", $e3, true, false)."<br>";
	echo "done<br>";
	
	/* TODO: fix error:
	When using the e2, $walrus image, a 1.68mb png (the other 2 images are less than 1/3 of walrus file!):
	Error writing to database

	More information about this error
	Debug info:
	Stack trace:

	line 446 of /lib/dml/moodle_database.php: dml_write_exception thrown
	line 1080 of /lib/dml/mysqli_native_moodle_database.php: call to moodle_database->query_end()
	line 1122 of /lib/dml/mysqli_native_moodle_database.php: call to mysqli_native_moodle_database->insert_record_raw()
	line 54 of /local/memplugin/adraw-insert.php: call to mysqli_native_moodle_database->insert_record()
	*/
?>

