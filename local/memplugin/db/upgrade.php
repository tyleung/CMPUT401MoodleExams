<?php

	global $CFG, $USER, $DB, $OUTPUT;
	require_once($CFG->dirroot.'/lib/db/upgradelib.php');
	$dbman = $DB->get_manager();
	
	/**
	* Version 2016030401 adds tables to store exam booklet data and related.
	*/
    
    if ($oldversion < 2016030401) {

        // Define table mem_exam_data to be created.
        $table = new xmldb_table('mem_exam_data');

        // Adding fields to table mem_exam_data.
        $table->add_field('booklet_id', XMLDB_TYPE_INTEGER, '10', null, XMLDB_NOTNULL, XMLDB_SEQUENCE, null);
        $table->add_field('student_id', XMLDB_TYPE_INTEGER, '9', null, XMLDB_NOTNULL, null, null);
        $table->add_field('prof_id', XMLDB_TYPE_INTEGER, '9', null, null, null, null);
        $table->add_field('date_finalized', XMLDB_TYPE_INTEGER, '10', null, null, null, null);
        $table->add_field('course_id', XMLDB_TYPE_CHAR, '10', null, null, null, null);

        // Adding keys to table mem_exam_data.
        $table->add_key('primary_key', XMLDB_KEY_PRIMARY, array('booklet_id'));

        // Conditionally launch create table for mem_exam_data.
        if (!$dbman->table_exists($table)) {
            $dbman->create_table($table);
        }


        // Define table mem_mark_stats to be created.
        $table = new xmldb_table('mem_mark_stats');

        // Adding fields to table mem_mark_stats.
        $table->add_field('booklet_id', XMLDB_TYPE_INTEGER, '10', null, XMLDB_NOTNULL, null, null);
        $table->add_field('total_booklet_score', XMLDB_TYPE_INTEGER, '3', null, XMLDB_NOTNULL, null, null);
        $table->add_field('total_booklet_score_max', XMLDB_TYPE_INTEGER, '3', null, XMLDB_NOTNULL, null, null);
        $table->add_field('mark_stats_id', XMLDB_TYPE_INTEGER, '10', null, XMLDB_NOTNULL, XMLDB_SEQUENCE, null);

        // Adding keys to table mem_mark_stats.
        $table->add_key('primary', XMLDB_KEY_PRIMARY, array('mark_stats_id'));
        $table->add_key('foreign_key', XMLDB_KEY_FOREIGN, array('booklet_id'), 'mem_exam_data', array('booklet_id'));

        // Conditionally launch create table for mem_mark_stats.
        if (!$dbman->table_exists($table)) {
            $dbman->create_table($table);
        }


        // Define table mem_pdf_files to be created.
        $table = new xmldb_table('mem_pdf_files');

        // Adding fields to table mem_pdf_files.
        $table->add_field('pdf_file_id', XMLDB_TYPE_INTEGER, '10', null, XMLDB_NOTNULL, XMLDB_SEQUENCE, null);
        $table->add_field('booklet_id', XMLDB_TYPE_INTEGER, '10', null, XMLDB_NOTNULL, null, null);
        $table->add_field('pdf_file', XMLDB_TYPE_BINARY, null, null, XMLDB_NOTNULL, null, null);

        // Adding keys to table mem_pdf_files.
        $table->add_key('primary', XMLDB_KEY_PRIMARY, array('pdf_file_id'));
        $table->add_key('foreign_key', XMLDB_KEY_FOREIGN, array('booklet_id'), 'mem_exam_data', array('booklet_id'));

        // Conditionally launch create table for mem_pdf_files.
        if (!$dbman->table_exists($table)) {
            $dbman->create_table($table);
        }


        // Define table mem_pages to be created.
        $table = new xmldb_table('mem_pages');

        // Adding fields to table mem_pages.
        $table->add_field('page_id', XMLDB_TYPE_INTEGER, '10', null, XMLDB_NOTNULL, XMLDB_SEQUENCE, null);
        $table->add_field('booklet_id', XMLDB_TYPE_INTEGER, '10', null, XMLDB_NOTNULL, null, null);
        $table->add_field('page_marks', XMLDB_TYPE_INTEGER, '3', null, XMLDB_NOTNULL, null, null);
        $table->add_field('page_marks_max', XMLDB_TYPE_INTEGER, '3', null, XMLDB_NOTNULL, null, null);

        // Adding keys to table mem_pages.
        $table->add_key('primary', XMLDB_KEY_PRIMARY, array('page_id'));
        $table->add_key('foreign_key', XMLDB_KEY_FOREIGN, array('booklet_id'), 'mem_exam_data', array('booklet_id'));

        // Conditionally launch create table for mem_pages.
        if (!$dbman->table_exists($table)) {
            $dbman->create_table($table);
        }

        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016030401, 'local', 'memplugin');
    }

	/**
	* Version 2016030410 renamed mem_exam_data table to more suitable name mem_booklet_data.
	*/
    
    if ($oldversion < 2016030410) {

        // Define table mem_exam_data to be renamed to mem_booklet_data.
        $table = new xmldb_table('mem_exam_data');

        // Launch rename table for mem_booklet_data.
        $dbman->rename_table($table, 'mem_booklet_data');
		
		// Drop old foreign keys
		
		// Define key foreign_key (foreign) to be dropped form mem_pdf_files.
        $table = new xmldb_table('mem_pdf_files');
        $key = new xmldb_key('foreign_key', XMLDB_KEY_FOREIGN, array('booklet_id'), 'mem_booklet_data', array('booklet_id'));

        // Launch drop key foreign_key.
        $dbman->drop_key($table, $key);
		
		// Define key foreign_key (foreign) to be dropped form mem_mark_stats.
        $table = new xmldb_table('mem_mark_stats');
        $key = new xmldb_key('foreign_key', XMLDB_KEY_FOREIGN, array('booklet_id'), 'mem_booklet_data', array('booklet_id'));

        // Launch drop key foreign_key.
        $dbman->drop_key($table, $key);
		
		// Define key foreign_key (foreign) to be dropped form mem_pages.
        $table = new xmldb_table('mem_pages');
        $key = new xmldb_key('foreign_key', XMLDB_KEY_FOREIGN, array('booklet_id'), 'mem_booklet_data', array('booklet_id'));

        // Launch drop key foreign_key.
        $dbman->drop_key($table, $key);
		
		// Add new foreign keys referencing renamed table.
		
		// Define key foreign_key (foreign-unique) to be added to mem_mark_stats.
        $table = new xmldb_table('mem_mark_stats');
        $key = new xmldb_key('foreign_key', XMLDB_KEY_FOREIGN_UNIQUE, array('booklet_id'), 'mem_booklet_data', array('booklet_id'));

        // Launch add key foreign_key.
        $dbman->add_key($table, $key);
		
        // Define key foreign_key (foreign-unique) to be added to mem_pdf_files.
        $table = new xmldb_table('mem_pdf_files');
        $key = new xmldb_key('foreign_key', XMLDB_KEY_FOREIGN_UNIQUE, array('booklet_id'), 'mem_booklet_data', array('booklet_id'));

        // Launch add key foreign_key.
        $dbman->add_key($table, $key);
		
		// Define key foreign_key (foreign) to be added to mem_pages.
        $table = new xmldb_table('mem_pages');
        $key = new xmldb_key('foreign_key', XMLDB_KEY_FOREIGN, array('booklet_id'), 'mem_booklet_data', array('booklet_id'));

        // Launch add key foreign_key.
        $dbman->add_key($table, $key);

		
        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016030410, 'local', 'memplugin');
    }

?>
