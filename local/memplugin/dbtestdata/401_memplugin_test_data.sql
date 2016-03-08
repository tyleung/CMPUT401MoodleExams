-- To RUN: in terminal type mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql
insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 8377519, 0, 'CMPUT469', '2013 FALL' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 0, 4 ),  ( (select @foreignkey), 0, 4 ),  ( (select @foreignkey), 0, 4 ),  ( (select @foreignkey), 0, 4 ),  ( (select @foreignkey), 0, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 8618289, 1, 'CMPUT469', '2014 SPRING' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 1936327, 3, 'CMPUT469', '2015 FALL' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 8214110, 3, 'CMPUT469', '2015 SPRING' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 291804, 3, 'CMPUT469', '2012 WINTER' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 2108371, 2, 'CMPUT469', '2014 FALL' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 4, 4 ),  ( (select @foreignkey), 4, 4 ),  ( (select @foreignkey), 4, 4 ),  ( (select @foreignkey), 4, 4 ),  ( (select @foreignkey), 4, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 7096392, 2, 'CMPUT469', '2015 SPRING' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 ),  ( (select @foreignkey), 2, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 8644014, 2, 'CMPUT469', '2016 FALL' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 4189436, 3, 'CMPUT469', '2016 FALL' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 ),  ( (select @foreignkey), 1, 4 );



insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin)  values ( 8108972, 1, 'CMPUT469', '2013 SUMMER' );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max) values ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 ),  ( (select @foreignkey), 3, 4 );



