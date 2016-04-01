<?php
// proper upgrade.php ?? from https://github.com/moodle/moodle/blob/master/mod/assign/db/upgrade.php
require_once($CFG->dirroot.'/lib/db/upgradelib.php');

function xmldb_local_memplugin_upgrade($oldversion) {
    global $CFG, $DB;
    $dbman = $DB->get_manager();	

    if ($oldversion < 2016030401) {
		
		//Version 2016030401 adds tables to store exam booklet data and related.
		
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
    
    if ($oldversion < 2016030410) {
    
		//Version 2016030410 renamed mem_exam_data table to more suitable name mem_booklet_data.
		
		
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

    if ($oldversion < 2016030602) {
    
		//Version 2016030602 Added field: year-semester-origin. to contain the origin of exam, e.g. "2015 FALL"
		
		// Define field year_semester_origin to be added to mem_booklet_data.
        $table = new xmldb_table('mem_booklet_data');
        $field = new xmldb_field('year_semester_origin', XMLDB_TYPE_CHAR, '11', null, XMLDB_NOTNULL, null, null, 'course_id');

        // Conditionally launch add field year_semester_origin.
        if (!$dbman->field_exists($table, $field)) {
            $dbman->add_field($table, $field);
        }
			
        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016030602, 'local', 'memplugin');
    }
    
    if ($oldversion < 2016031002) {
		//Version 2016031002 added max pages in mem_booklet_data and page_num in mem_pages.
		
        // Define field max_pages to be added to mem_booklet_data.
        $table = new xmldb_table('mem_booklet_data');
        $field = new xmldb_field('max_pages', XMLDB_TYPE_INTEGER, '3', null, XMLDB_NOTNULL, null, null, 'year_semester_origin');

        // Conditionally launch add field max_pages.
        if (!$dbman->field_exists($table, $field)) {
            $dbman->add_field($table, $field);
        }
        
        // Define field page_num to be added to mem_pages.
        $table = new xmldb_table('mem_pages');
        $field = new xmldb_field('page_num', XMLDB_TYPE_INTEGER, '3', null, XMLDB_NOTNULL, null, null, 'page_marks_max');

        // Conditionally launch add field page_num.
        if (!$dbman->field_exists($table, $field)) {
            $dbman->add_field($table, $field);
        }

        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016031002, 'local', 'memplugin');
    }

    if ($oldversion < 2016031006) {
	    // 2016031006 changes student_id to nullable. Because student ids are not immediately assigned.

        // Changing nullability of field student_id on table mem_booklet_data to null.
        $table = new xmldb_table('mem_booklet_data');
        $field = new xmldb_field('student_id', XMLDB_TYPE_INTEGER, '9', null, null, null, null, 'booklet_id');

        // Launch change of nullability for field student_id.
        $dbman->change_field_notnull($table, $field);

        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016031006, 'local', 'memplugin');
    }
	
	if ($oldversion < 2016031401) {
		// 2016031401 changes student_id type from int to char to match the idnumber field in the mdl_user table.
		
        // Changing type of field student_id on table mem_booklet_data to char.
        $table = new xmldb_table('mem_booklet_data');
        $field = new xmldb_field('student_id', XMLDB_TYPE_CHAR, '255', null, null, null, null, 'booklet_id');

        // Launch change of type for field student_id.
        $dbman->change_field_type($table, $field);

        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016031401, 'local', 'memplugin');
	}

	if ($oldversion < 2016031402) {
		// 2016031402 changes course_id type from varchar to int to match the id field in the mdl_course table.
		
        // Changing type of field course_id on table mem_booklet_data to int.
        $table = new xmldb_table('mem_booklet_data');
        $field = new xmldb_field('course_id', XMLDB_TYPE_INTEGER, '10', null, null, null, null, 'date_finalized');

        // Launch change of type for field course_id.
        $dbman->change_field_type($table, $field);

        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016031402, 'local', 'memplugin');
	}

    if ($oldversion < 2016032805) {

        // Define field page_num to be added to mem_pdf_files.
        $table = new xmldb_table('mem_pdf_files');
        $field = new xmldb_field('page_num', XMLDB_TYPE_INTEGER, '2', null, XMLDB_NOTNULL, null, null, 'pdf_file');

        // Conditionally launch add field page_num.
        if (!$dbman->field_exists($table, $field)) {
            $dbman->add_field($table, $field);
        }

        // Define field pdf_comments to be added to mem_pdf_files.
        $table = new xmldb_table('mem_pdf_files');
        $field = new xmldb_field('pdf_comments', XMLDB_TYPE_BINARY, null, null, null, null, null, 'page_num');

        // Conditionally launch add field pdf_comments.
        if (!$dbman->field_exists($table, $field)) {
            $dbman->add_field($table, $field);
        }

        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016032805, 'local', 'memplugin');
    }

	if ($oldversion < 2016040104) {

        // Define field booklet_num to be added to mem_pdf_files.
        $table = new xmldb_table('mem_pdf_files');
        $field = new xmldb_field('booklet_num', XMLDB_TYPE_INTEGER, '6', null, XMLDB_NOTNULL, null, null, 'pdf_comments');

        // Conditionally launch add field booklet_num.
        if (!$dbman->field_exists($table, $field)) {
            $dbman->add_field($table, $field);
        }

        // Memplugin savepoint reached.
        upgrade_plugin_savepoint(true, 2016040104, 'local', 'memplugin');
    }

 	return true;   
}    
    
    
