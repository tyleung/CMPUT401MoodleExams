<?php
	require_once '../../config.php';
	require_once $CFG->dirroot.'/lib/formslib.php';
	require_once $CFG->dirroot.'/lib/datalib.php'; // database library

	class stats_sem_form extends moodleform {
		/*public $courseid = -1;
		public function custom_display($i) {
			$courseid = $i;
		}
		*/
		//definition is the constructor that moodle will look for to create it.
		function definition() {
			global $CFG, $DB, $USER; //Declare our globals for use
			$nform = $this->_form; //Tell this object to initialize with the properties of the Moodle form.
		
			$courseid = $_GET['course_choice'];

			//Add all your form elements here
			$nform->addElement('header', 'year_sem', get_string('stats_title','local_memplugin'));
			//$db_entry = $DB->get_fieldset_sql('SELECT year_semester_origin FROM {mem_booklet_data}', array(1));
			$db_entry = $DB->get_records_sql('SELECT booklet_id, year_semester_origin, course_id FROM {mem_booklet_data} WHERE course_id=?', array($courseid));

			$selection = array();
			array_push($selection, '');
		
			foreach($db_entry as $dbe) {
				$strname = (string)$dbe->year_semester_origin;
				$str = (string)$dbe->course_id;
				$str = $str."_".str_ireplace(" ","&nbsp;",$strname);
				$selection[$str] = $strname;
			}
			asort($selection);
			
			//http://192.168.56.101/moodle/local/memplugin/stats.php?course_choice=CMPUT469
			// BUG: FOR SOME REASON post here only posts the submit button & it's value...
			// object(stdClass)#679 (1) { ["year_choice_submit"]=> string(14) "Get Statistics" } 
			// instead of the selection array.
			
			$select = array();
			$select[] = $nform->createElement('select','year_choice_select', get_string('stats_select_title', 'local_memplugin'),$selection);
			// groups submit button with the dropdown menu
			$select[] = $nform->createElement('submit', 'year_choice_submit', get_string('stats_choice_submit', 'local_memplugin'));
			// array(' ') makes empty space so formatting is easier to read.
			$nform->addElement('group', 'year_sem_selection', get_string('stats_grouping', 'local_memplugin'), $select, array(' '),false);
		}
	
		//If you need to validate your form information, you can override  the parent's validation method and write your own.	
		function validation($data, $files) {
			$errors = parent::validation($data, $files);
			global $DB, $CFG, $USER; //Declare them if you need them

			//if ($data['data_name'] Some condition here)  {
				//$errors['element_to_display_error'] = get_string('error', 'local_demo_plug-in');
		}	
	}
	
	class stats_course_form extends moodleform {
	
		//definition is the constructor that moodle will look for to create it.
		function definition() {
			global $CFG, $DB, $USER; //Declare our globals for use
			$mform = $this->_form; //Tell this object to initialize with the properties of the Moodle form.
		
			// enrolled, with no role. this is too generic, later make this so it retrieves only where user has teacher+ privilige.
			$courses = enrol_get_users_courses($USER->id, true,'*', 'visible DESC, sortorder ASC');
		
			$selection = array();
			array_push($selection, '');
		
			foreach($courses as $c) {
				$selection[(string)$c->id] = (string)$c->fullname;
			}
			asort($selection);
		
			$select = array();
			$select[] = $mform->createElement('select','course_choice_select', get_string('stats_select_title', 'local_memplugin'),$selection);
			// groups submit button with the dropdown menu
			$select[] = $mform->createElement('submit', 'course_choice_submit', get_string('stats_choice_submit', 'local_memplugin'));
			// array(' ') makes empty space so formatting is easier to read.
			$mform->addElement('group', 'course_sem_selection', get_string('stats_grouping', 'local_memplugin'), $select, array(' '),false);
				
		}
	
		//If you need to validate your form information, you can override  the parent's validation method and write your own.	
		function validation($data, $files) {
			$errors = parent::validation($data, $files);
			global $DB, $CFG, $USER; //Declare them if you need them

			//if ($data['data_name'] Some condition here)  {
				//$errors['element_to_display_error'] = get_string('error', 'local_demo_plug-in');
		}
	}

?>

