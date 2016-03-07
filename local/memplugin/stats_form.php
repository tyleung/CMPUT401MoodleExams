<?php
	require_once '../../config.php';
	require_once $CFG->dirroot.'/lib/formslib.php';
	require_once $CFG->dirroot.'/lib/datalib.php'; // database library

	class stats_form extends moodleform {
	
	//definition is the constructor that moodle will look for to create it.
	function definition() {
		global $CFG, $DB, $USER; //Declare our globals for use
		$mform = $this->_form; //Tell this object to initialize with the properties of the Moodle form.
		
		//Add all your form elements here
		$mform->addElement('header', 'year_sem', get_string('stats_title','local_memplugin'));
		$db_entry = $DB->get_fieldset_sql('SELECT year_semester_origin FROM {mem_booklet_data}', array(1));
		
		$selection = array();
		array_push($selection, '');
		
		foreach($db_entry as $dbe) {
			$selection[str_ireplace(" ","&nbsp;",$dbe)] = $dbe;
		}
		
		$select = array();
		$select[] = $mform->createElement('select','year_choice_select', get_string('stats_select_title', 'local_memplugin'),$selection);
		// groups submit button with the dropdown menu
		$select[] = $mform->createElement('submit', 'year_choice_submit', get_string('stats_choice_submit', 'local_memplugin'));
		// array(' ') makes empty space so formatting is easier to read.
		$mform->addElement('group', 'year_sem_selection', get_string('stats_grouping', 'local_memplugin'), $select, array(' '),false);
				
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

