<?php

//defined('MOODLE_INTERNAL') || die();

require_once '../../config.php';
global $DB, $CFG, $USER; 
	$search = $_GET['search'];

	//$booklet_pg_sql = $GLOBALS['DB']->get_records_sql('SELECT page_id, {mem_pages}.booklet_id, max_pages, page_num, page_marks, page_marks_max FROM {mem_booklet_data}, {mem_pages} WHERE year_semester_origin=? and {mem_pages}.booklet_id={mem_booklet_data}.booklet_id', array($year));
	
	print_r($search."\n");
	
	/*
	//From the /lib/accesslib.php @ line 140:
	 //System context level - only one instance in every system
	define('CONTEXT_SYSTEM', 10);
	 //User context level -  one instance for each user describing what others can do to user
	define('CONTEXT_USER', 30);
	 //Course category context level - one instance for each category
	define('CONTEXT_COURSECAT', 40);
	 //Course context level - one instances for each course
	define('CONTEXT_COURSE', 50);
	 //Course module context level - one instance for each course module
	define('CONTEXT_MODULE', 70);
	 //Block context level - one instance for each block, sticky blocks are tricky
	 //because ppl think they should be able to override them at lower contexts.
	 //Any other context level instance can be parent of block context.
	define('CONTEXT_BLOCK', 80);
	
	https://docs.moodle.org/dev/Access_API#Context_fetching
	Fetching by object id
		$systemcontext = context_system::instance();
		$usercontext = context_user::instance($user->id);
		$categorycontext = context_coursecat::instance($category->id);
		$coursecontext = context_course::instance($course->id);
		$contextmodule = context_module::instance($cm->id);

	Fetching by context id:
		$context = context::instance_by_id($contextid);

	*/
	$enrolled = enrol_get_users_courses($USER->id, true,'*', 'visible DESC, sortorder ASC');
	$lastcourse = end($enrolled);
	print_r($enrolled);
	echo "</br>";
	echo "</br>";
	print_r($lastcourse);
	echo "</br>";
	echo "</br>";
	//https://docs.moodle.org/dev/Enrolment_API
	//get_enrolled_users(context $context, $withcapability = '', $groupid = 0, $userfields = 'u.*', $orderby = '', $limitfrom = 0, $limitnum = 0)
	print_r(get_enrolled_users(context_course::instance($lastcourse->id),'', 0, 'u.*'));
	

	
?>

