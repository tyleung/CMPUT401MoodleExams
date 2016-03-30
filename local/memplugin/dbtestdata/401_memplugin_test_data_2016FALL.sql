-- To RUN: in terminal type mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql

-- Delete/truncate tables before inserting the test data.
delete from mdl_user where username like 'student%';

truncate mdl_mem_booklet_data;

truncate mdl_mem_mark_stats;

truncate mdl_mem_pages;


-- Insert test data.
insert into mdl_course (category, sortorder, fullname, shortname, summary, format)  values ('1', '10000', 'CMPUT401 Test Course', 'C401', 'This is a test course.', 'weeks');

insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student0', 'StudentLastName0', 'student0', 'symmetricalSpoon#1', 'student0@cmput401.ca', '4783278' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4783278', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student1', 'StudentLastName1', 'student1', 'symmetricalSpoon#1', 'student1@cmput401.ca', '9904718' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9904718', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student2', 'StudentLastName2', 'student2', 'symmetricalSpoon#1', 'student2@cmput401.ca', '7627396' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7627396', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student3', 'StudentLastName3', 'student3', 'symmetricalSpoon#1', 'student3@cmput401.ca', '4529493' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4529493', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student4', 'StudentLastName4', 'student4', 'symmetricalSpoon#1', 'student4@cmput401.ca', '1792519' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1792519', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student5', 'StudentLastName5', 'student5', 'symmetricalSpoon#1', 'student5@cmput401.ca', '4244866' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4244866', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student6', 'StudentLastName6', 'student6', 'symmetricalSpoon#1', 'student6@cmput401.ca', '5346401' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5346401', 1, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student7', 'StudentLastName7', 'student7', 'symmetricalSpoon#1', 'student7@cmput401.ca', '9182860' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9182860', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student8', 'StudentLastName8', 'student8', 'symmetricalSpoon#1', 'student8@cmput401.ca', '2095628' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2095628', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student9', 'StudentLastName9', 'student9', 'symmetricalSpoon#1', 'student9@cmput401.ca', '2239954' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2239954', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student10', 'StudentLastName10', 'student10', 'symmetricalSpoon#1', 'student10@cmput401.ca', '3501830' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3501830', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student11', 'StudentLastName11', 'student11', 'symmetricalSpoon#1', 'student11@cmput401.ca', '7160493' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7160493', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student12', 'StudentLastName12', 'student12', 'symmetricalSpoon#1', 'student12@cmput401.ca', '495322' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '495322', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student13', 'StudentLastName13', 'student13', 'symmetricalSpoon#1', 'student13@cmput401.ca', '7814529' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7814529', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student14', 'StudentLastName14', 'student14', 'symmetricalSpoon#1', 'student14@cmput401.ca', '1600987' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1600987', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student15', 'StudentLastName15', 'student15', 'symmetricalSpoon#1', 'student15@cmput401.ca', '2669563' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2669563', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student16', 'StudentLastName16', 'student16', 'symmetricalSpoon#1', 'student16@cmput401.ca', '273181' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '273181', 0, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student17', 'StudentLastName17', 'student17', 'symmetricalSpoon#1', 'student17@cmput401.ca', '3989163' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3989163', 0, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student18', 'StudentLastName18', 'student18', 'symmetricalSpoon#1', 'student18@cmput401.ca', '6257784' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6257784', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student19', 'StudentLastName19', 'student19', 'symmetricalSpoon#1', 'student19@cmput401.ca', '8988772' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8988772', 1, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student20', 'StudentLastName20', 'student20', 'symmetricalSpoon#1', 'student20@cmput401.ca', '8924602' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8924602', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student21', 'StudentLastName21', 'student21', 'symmetricalSpoon#1', 'student21@cmput401.ca', '5977813' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5977813', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student22', 'StudentLastName22', 'student22', 'symmetricalSpoon#1', 'student22@cmput401.ca', '7935651' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7935651', 1, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student23', 'StudentLastName23', 'student23', 'symmetricalSpoon#1', 'student23@cmput401.ca', '2422012' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2422012', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student24', 'StudentLastName24', 'student24', 'symmetricalSpoon#1', 'student24@cmput401.ca', '8603258' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8603258', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student25', 'StudentLastName25', 'student25', 'symmetricalSpoon#1', 'student25@cmput401.ca', '4329206' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4329206', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student26', 'StudentLastName26', 'student26', 'symmetricalSpoon#1', 'student26@cmput401.ca', '3909393' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3909393', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student27', 'StudentLastName27', 'student27', 'symmetricalSpoon#1', 'student27@cmput401.ca', '9962204' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9962204', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student28', 'StudentLastName28', 'student28', 'symmetricalSpoon#1', 'student28@cmput401.ca', '7721249' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7721249', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student29', 'StudentLastName29', 'student29', 'symmetricalSpoon#1', 'student29@cmput401.ca', '802424' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '802424', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student30', 'StudentLastName30', 'student30', 'symmetricalSpoon#1', 'student30@cmput401.ca', '180083' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '180083', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student31', 'StudentLastName31', 'student31', 'symmetricalSpoon#1', 'student31@cmput401.ca', '3564312' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3564312', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student32', 'StudentLastName32', 'student32', 'symmetricalSpoon#1', 'student32@cmput401.ca', '6959218' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6959218', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student33', 'StudentLastName33', 'student33', 'symmetricalSpoon#1', 'student33@cmput401.ca', '8845970' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8845970', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student34', 'StudentLastName34', 'student34', 'symmetricalSpoon#1', 'student34@cmput401.ca', '6064800' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6064800', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student35', 'StudentLastName35', 'student35', 'symmetricalSpoon#1', 'student35@cmput401.ca', '690599' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '690599', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student36', 'StudentLastName36', 'student36', 'symmetricalSpoon#1', 'student36@cmput401.ca', '2999692' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2999692', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student37', 'StudentLastName37', 'student37', 'symmetricalSpoon#1', 'student37@cmput401.ca', '6162679' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6162679', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student38', 'StudentLastName38', 'student38', 'symmetricalSpoon#1', 'student38@cmput401.ca', '2258661' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2258661', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student39', 'StudentLastName39', 'student39', 'symmetricalSpoon#1', 'student39@cmput401.ca', '7176574' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7176574', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student40', 'StudentLastName40', 'student40', 'symmetricalSpoon#1', 'student40@cmput401.ca', '3516669' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3516669', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student41', 'StudentLastName41', 'student41', 'symmetricalSpoon#1', 'student41@cmput401.ca', '1228825' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1228825', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student42', 'StudentLastName42', 'student42', 'symmetricalSpoon#1', 'student42@cmput401.ca', '7491963' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7491963', 1, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student43', 'StudentLastName43', 'student43', 'symmetricalSpoon#1', 'student43@cmput401.ca', '6475630' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6475630', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student44', 'StudentLastName44', 'student44', 'symmetricalSpoon#1', 'student44@cmput401.ca', '2453930' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2453930', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student45', 'StudentLastName45', 'student45', 'symmetricalSpoon#1', 'student45@cmput401.ca', '4898695' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4898695', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student46', 'StudentLastName46', 'student46', 'symmetricalSpoon#1', 'student46@cmput401.ca', '2438766' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2438766', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student47', 'StudentLastName47', 'student47', 'symmetricalSpoon#1', 'student47@cmput401.ca', '2875356' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2875356', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student48', 'StudentLastName48', 'student48', 'symmetricalSpoon#1', 'student48@cmput401.ca', '3142489' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3142489', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student49', 'StudentLastName49', 'student49', 'symmetricalSpoon#1', 'student49@cmput401.ca', '2505405' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2505405', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student50', 'StudentLastName50', 'student50', 'symmetricalSpoon#1', 'student50@cmput401.ca', '945935' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '945935', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student51', 'StudentLastName51', 'student51', 'symmetricalSpoon#1', 'student51@cmput401.ca', '1174175' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1174175', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student52', 'StudentLastName52', 'student52', 'symmetricalSpoon#1', 'student52@cmput401.ca', '8966766' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8966766', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student53', 'StudentLastName53', 'student53', 'symmetricalSpoon#1', 'student53@cmput401.ca', '7712039' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7712039', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student54', 'StudentLastName54', 'student54', 'symmetricalSpoon#1', 'student54@cmput401.ca', '2016359' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2016359', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student55', 'StudentLastName55', 'student55', 'symmetricalSpoon#1', 'student55@cmput401.ca', '3896595' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3896595', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student56', 'StudentLastName56', 'student56', 'symmetricalSpoon#1', 'student56@cmput401.ca', '4810276' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4810276', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student57', 'StudentLastName57', 'student57', 'symmetricalSpoon#1', 'student57@cmput401.ca', '389983' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '389983', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student58', 'StudentLastName58', 'student58', 'symmetricalSpoon#1', 'student58@cmput401.ca', '5761506' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5761506', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student59', 'StudentLastName59', 'student59', 'symmetricalSpoon#1', 'student59@cmput401.ca', '2956355' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2956355', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student60', 'StudentLastName60', 'student60', 'symmetricalSpoon#1', 'student60@cmput401.ca', '4748371' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4748371', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student61', 'StudentLastName61', 'student61', 'symmetricalSpoon#1', 'student61@cmput401.ca', '6301902' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6301902', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student62', 'StudentLastName62', 'student62', 'symmetricalSpoon#1', 'student62@cmput401.ca', '6945149' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6945149', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student63', 'StudentLastName63', 'student63', 'symmetricalSpoon#1', 'student63@cmput401.ca', '2272715' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2272715', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student64', 'StudentLastName64', 'student64', 'symmetricalSpoon#1', 'student64@cmput401.ca', '2967297' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2967297', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student65', 'StudentLastName65', 'student65', 'symmetricalSpoon#1', 'student65@cmput401.ca', '7192978' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7192978', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student66', 'StudentLastName66', 'student66', 'symmetricalSpoon#1', 'student66@cmput401.ca', '7524541' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7524541', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student67', 'StudentLastName67', 'student67', 'symmetricalSpoon#1', 'student67@cmput401.ca', '4139426' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4139426', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student68', 'StudentLastName68', 'student68', 'symmetricalSpoon#1', 'student68@cmput401.ca', '1008409' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1008409', 1, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student69', 'StudentLastName69', 'student69', 'symmetricalSpoon#1', 'student69@cmput401.ca', '5810569' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5810569', 1, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student70', 'StudentLastName70', 'student70', 'symmetricalSpoon#1', 'student70@cmput401.ca', '4147784' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4147784', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student71', 'StudentLastName71', 'student71', 'symmetricalSpoon#1', 'student71@cmput401.ca', '254269' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '254269', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student72', 'StudentLastName72', 'student72', 'symmetricalSpoon#1', 'student72@cmput401.ca', '4962847' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4962847', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student73', 'StudentLastName73', 'student73', 'symmetricalSpoon#1', 'student73@cmput401.ca', '4780263' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4780263', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student74', 'StudentLastName74', 'student74', 'symmetricalSpoon#1', 'student74@cmput401.ca', '2888533' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2888533', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student75', 'StudentLastName75', 'student75', 'symmetricalSpoon#1', 'student75@cmput401.ca', '4890873' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4890873', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student76', 'StudentLastName76', 'student76', 'symmetricalSpoon#1', 'student76@cmput401.ca', '2788320' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2788320', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student77', 'StudentLastName77', 'student77', 'symmetricalSpoon#1', 'student77@cmput401.ca', '4317945' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4317945', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student78', 'StudentLastName78', 'student78', 'symmetricalSpoon#1', 'student78@cmput401.ca', '2486561' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2486561', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student79', 'StudentLastName79', 'student79', 'symmetricalSpoon#1', 'student79@cmput401.ca', '8568141' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8568141', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student80', 'StudentLastName80', 'student80', 'symmetricalSpoon#1', 'student80@cmput401.ca', '1390440' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1390440', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student81', 'StudentLastName81', 'student81', 'symmetricalSpoon#1', 'student81@cmput401.ca', '9252804' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9252804', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student82', 'StudentLastName82', 'student82', 'symmetricalSpoon#1', 'student82@cmput401.ca', '4471622' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4471622', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student83', 'StudentLastName83', 'student83', 'symmetricalSpoon#1', 'student83@cmput401.ca', '9682272' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9682272', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student84', 'StudentLastName84', 'student84', 'symmetricalSpoon#1', 'student84@cmput401.ca', '5244590' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5244590', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student85', 'StudentLastName85', 'student85', 'symmetricalSpoon#1', 'student85@cmput401.ca', '1305211' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1305211', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student86', 'StudentLastName86', 'student86', 'symmetricalSpoon#1', 'student86@cmput401.ca', '1777111' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1777111', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student87', 'StudentLastName87', 'student87', 'symmetricalSpoon#1', 'student87@cmput401.ca', '9195153' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9195153', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student88', 'StudentLastName88', 'student88', 'symmetricalSpoon#1', 'student88@cmput401.ca', '7431743' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7431743', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student89', 'StudentLastName89', 'student89', 'symmetricalSpoon#1', 'student89@cmput401.ca', '1338938' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1338938', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student90', 'StudentLastName90', 'student90', 'symmetricalSpoon#1', 'student90@cmput401.ca', '4954066' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4954066', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student91', 'StudentLastName91', 'student91', 'symmetricalSpoon#1', 'student91@cmput401.ca', '7925216' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7925216', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student92', 'StudentLastName92', 'student92', 'symmetricalSpoon#1', 'student92@cmput401.ca', '3747348' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3747348', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student93', 'StudentLastName93', 'student93', 'symmetricalSpoon#1', 'student93@cmput401.ca', '8878630' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8878630', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student94', 'StudentLastName94', 'student94', 'symmetricalSpoon#1', 'student94@cmput401.ca', '1959101' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1959101', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student95', 'StudentLastName95', 'student95', 'symmetricalSpoon#1', 'student95@cmput401.ca', '5453081' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5453081', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student96', 'StudentLastName96', 'student96', 'symmetricalSpoon#1', 'student96@cmput401.ca', '8429327' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8429327', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student97', 'StudentLastName97', 'student97', 'symmetricalSpoon#1', 'student97@cmput401.ca', '7684773' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7684773', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student98', 'StudentLastName98', 'student98', 'symmetricalSpoon#1', 'student98@cmput401.ca', '2916427' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2916427', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student99', 'StudentLastName99', 'student99', 'symmetricalSpoon#1', 'student99@cmput401.ca', '283183' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '283183', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student100', 'StudentLastName100', 'student100', 'symmetricalSpoon#1', 'student100@cmput401.ca', '9999356' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9999356', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student101', 'StudentLastName101', 'student101', 'symmetricalSpoon#1', 'student101@cmput401.ca', '9665898' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9665898', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student102', 'StudentLastName102', 'student102', 'symmetricalSpoon#1', 'student102@cmput401.ca', '7498806' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7498806', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student103', 'StudentLastName103', 'student103', 'symmetricalSpoon#1', 'student103@cmput401.ca', '9462737' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9462737', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student104', 'StudentLastName104', 'student104', 'symmetricalSpoon#1', 'student104@cmput401.ca', '9153844' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9153844', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student105', 'StudentLastName105', 'student105', 'symmetricalSpoon#1', 'student105@cmput401.ca', '3201526' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3201526', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student106', 'StudentLastName106', 'student106', 'symmetricalSpoon#1', 'student106@cmput401.ca', '2086870' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2086870', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student107', 'StudentLastName107', 'student107', 'symmetricalSpoon#1', 'student107@cmput401.ca', '4976278' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4976278', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student108', 'StudentLastName108', 'student108', 'symmetricalSpoon#1', 'student108@cmput401.ca', '7212014' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7212014', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student109', 'StudentLastName109', 'student109', 'symmetricalSpoon#1', 'student109@cmput401.ca', '9093745' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9093745', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student110', 'StudentLastName110', 'student110', 'symmetricalSpoon#1', 'student110@cmput401.ca', '6195050' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6195050', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student111', 'StudentLastName111', 'student111', 'symmetricalSpoon#1', 'student111@cmput401.ca', '6317480' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6317480', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student112', 'StudentLastName112', 'student112', 'symmetricalSpoon#1', 'student112@cmput401.ca', '6941945' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6941945', 1, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student113', 'StudentLastName113', 'student113', 'symmetricalSpoon#1', 'student113@cmput401.ca', '3063684' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3063684', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student114', 'StudentLastName114', 'student114', 'symmetricalSpoon#1', 'student114@cmput401.ca', '1459588' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1459588', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student115', 'StudentLastName115', 'student115', 'symmetricalSpoon#1', 'student115@cmput401.ca', '7680541' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7680541', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student116', 'StudentLastName116', 'student116', 'symmetricalSpoon#1', 'student116@cmput401.ca', '1874951' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1874951', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student117', 'StudentLastName117', 'student117', 'symmetricalSpoon#1', 'student117@cmput401.ca', '9821008' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9821008', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student118', 'StudentLastName118', 'student118', 'symmetricalSpoon#1', 'student118@cmput401.ca', '2825747' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2825747', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student119', 'StudentLastName119', 'student119', 'symmetricalSpoon#1', 'student119@cmput401.ca', '7384146' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7384146', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student120', 'StudentLastName120', 'student120', 'symmetricalSpoon#1', 'student120@cmput401.ca', '4254831' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4254831', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student121', 'StudentLastName121', 'student121', 'symmetricalSpoon#1', 'student121@cmput401.ca', '3752543' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3752543', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student122', 'StudentLastName122', 'student122', 'symmetricalSpoon#1', 'student122@cmput401.ca', '3325237' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3325237', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student123', 'StudentLastName123', 'student123', 'symmetricalSpoon#1', 'student123@cmput401.ca', '6244903' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6244903', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student124', 'StudentLastName124', 'student124', 'symmetricalSpoon#1', 'student124@cmput401.ca', '4326788' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4326788', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student125', 'StudentLastName125', 'student125', 'symmetricalSpoon#1', 'student125@cmput401.ca', '6768416' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6768416', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student126', 'StudentLastName126', 'student126', 'symmetricalSpoon#1', 'student126@cmput401.ca', '9593562' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9593562', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student127', 'StudentLastName127', 'student127', 'symmetricalSpoon#1', 'student127@cmput401.ca', '1689152' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1689152', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student128', 'StudentLastName128', 'student128', 'symmetricalSpoon#1', 'student128@cmput401.ca', '8847805' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8847805', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student129', 'StudentLastName129', 'student129', 'symmetricalSpoon#1', 'student129@cmput401.ca', '5026849' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5026849', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student130', 'StudentLastName130', 'student130', 'symmetricalSpoon#1', 'student130@cmput401.ca', '7610672' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7610672', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student131', 'StudentLastName131', 'student131', 'symmetricalSpoon#1', 'student131@cmput401.ca', '9097277' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9097277', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student132', 'StudentLastName132', 'student132', 'symmetricalSpoon#1', 'student132@cmput401.ca', '2649113' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2649113', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student133', 'StudentLastName133', 'student133', 'symmetricalSpoon#1', 'student133@cmput401.ca', '4102936' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4102936', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student134', 'StudentLastName134', 'student134', 'symmetricalSpoon#1', 'student134@cmput401.ca', '1406044' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1406044', 1, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student135', 'StudentLastName135', 'student135', 'symmetricalSpoon#1', 'student135@cmput401.ca', '2407687' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2407687', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student136', 'StudentLastName136', 'student136', 'symmetricalSpoon#1', 'student136@cmput401.ca', '2565686' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2565686', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student137', 'StudentLastName137', 'student137', 'symmetricalSpoon#1', 'student137@cmput401.ca', '5777082' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5777082', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student138', 'StudentLastName138', 'student138', 'symmetricalSpoon#1', 'student138@cmput401.ca', '7939184' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7939184', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student139', 'StudentLastName139', 'student139', 'symmetricalSpoon#1', 'student139@cmput401.ca', '9135590' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9135590', 0, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student140', 'StudentLastName140', 'student140', 'symmetricalSpoon#1', 'student140@cmput401.ca', '1876906' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1876906', 0, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student141', 'StudentLastName141', 'student141', 'symmetricalSpoon#1', 'student141@cmput401.ca', '3952087' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3952087', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student142', 'StudentLastName142', 'student142', 'symmetricalSpoon#1', 'student142@cmput401.ca', '6276380' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6276380', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student143', 'StudentLastName143', 'student143', 'symmetricalSpoon#1', 'student143@cmput401.ca', '8325867' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8325867', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student144', 'StudentLastName144', 'student144', 'symmetricalSpoon#1', 'student144@cmput401.ca', '160169' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '160169', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student145', 'StudentLastName145', 'student145', 'symmetricalSpoon#1', 'student145@cmput401.ca', '8933039' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8933039', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student146', 'StudentLastName146', 'student146', 'symmetricalSpoon#1', 'student146@cmput401.ca', '9008967' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9008967', 1, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student147', 'StudentLastName147', 'student147', 'symmetricalSpoon#1', 'student147@cmput401.ca', '1157009' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1157009', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student148', 'StudentLastName148', 'student148', 'symmetricalSpoon#1', 'student148@cmput401.ca', '2757753' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2757753', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student149', 'StudentLastName149', 'student149', 'symmetricalSpoon#1', 'student149@cmput401.ca', '7312167' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7312167', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student150', 'StudentLastName150', 'student150', 'symmetricalSpoon#1', 'student150@cmput401.ca', '7683516' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7683516', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student151', 'StudentLastName151', 'student151', 'symmetricalSpoon#1', 'student151@cmput401.ca', '4564062' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4564062', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student152', 'StudentLastName152', 'student152', 'symmetricalSpoon#1', 'student152@cmput401.ca', '4982093' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4982093', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student153', 'StudentLastName153', 'student153', 'symmetricalSpoon#1', 'student153@cmput401.ca', '8614226' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8614226', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student154', 'StudentLastName154', 'student154', 'symmetricalSpoon#1', 'student154@cmput401.ca', '5877131' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5877131', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student155', 'StudentLastName155', 'student155', 'symmetricalSpoon#1', 'student155@cmput401.ca', '3368770' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3368770', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student156', 'StudentLastName156', 'student156', 'symmetricalSpoon#1', 'student156@cmput401.ca', '8513729' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8513729', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student157', 'StudentLastName157', 'student157', 'symmetricalSpoon#1', 'student157@cmput401.ca', '1761529' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1761529', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student158', 'StudentLastName158', 'student158', 'symmetricalSpoon#1', 'student158@cmput401.ca', '3548174' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3548174', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student159', 'StudentLastName159', 'student159', 'symmetricalSpoon#1', 'student159@cmput401.ca', '4629605' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4629605', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student160', 'StudentLastName160', 'student160', 'symmetricalSpoon#1', 'student160@cmput401.ca', '1715780' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1715780', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student161', 'StudentLastName161', 'student161', 'symmetricalSpoon#1', 'student161@cmput401.ca', '1399135' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1399135', 0, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student162', 'StudentLastName162', 'student162', 'symmetricalSpoon#1', 'student162@cmput401.ca', '9213154' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9213154', 3, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student163', 'StudentLastName163', 'student163', 'symmetricalSpoon#1', 'student163@cmput401.ca', '872759' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '872759', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student164', 'StudentLastName164', 'student164', 'symmetricalSpoon#1', 'student164@cmput401.ca', '8246005' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8246005', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student165', 'StudentLastName165', 'student165', 'symmetricalSpoon#1', 'student165@cmput401.ca', '8182333' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8182333', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student166', 'StudentLastName166', 'student166', 'symmetricalSpoon#1', 'student166@cmput401.ca', '8213221' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8213221', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student167', 'StudentLastName167', 'student167', 'symmetricalSpoon#1', 'student167@cmput401.ca', '1034460' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1034460', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student168', 'StudentLastName168', 'student168', 'symmetricalSpoon#1', 'student168@cmput401.ca', '1641027' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1641027', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student169', 'StudentLastName169', 'student169', 'symmetricalSpoon#1', 'student169@cmput401.ca', '688767' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '688767', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student170', 'StudentLastName170', 'student170', 'symmetricalSpoon#1', 'student170@cmput401.ca', '3974175' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3974175', 1, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student171', 'StudentLastName171', 'student171', 'symmetricalSpoon#1', 'student171@cmput401.ca', '3481044' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3481044', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student172', 'StudentLastName172', 'student172', 'symmetricalSpoon#1', 'student172@cmput401.ca', '1221159' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1221159', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student173', 'StudentLastName173', 'student173', 'symmetricalSpoon#1', 'student173@cmput401.ca', '5922879' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5922879', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student174', 'StudentLastName174', 'student174', 'symmetricalSpoon#1', 'student174@cmput401.ca', '5338656' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5338656', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student175', 'StudentLastName175', 'student175', 'symmetricalSpoon#1', 'student175@cmput401.ca', '7826076' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7826076', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student176', 'StudentLastName176', 'student176', 'symmetricalSpoon#1', 'student176@cmput401.ca', '7094803' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7094803', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student177', 'StudentLastName177', 'student177', 'symmetricalSpoon#1', 'student177@cmput401.ca', '1852166' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1852166', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student178', 'StudentLastName178', 'student178', 'symmetricalSpoon#1', 'student178@cmput401.ca', '9557604' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9557604', 0, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student179', 'StudentLastName179', 'student179', 'symmetricalSpoon#1', 'student179@cmput401.ca', '3323607' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3323607', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student180', 'StudentLastName180', 'student180', 'symmetricalSpoon#1', 'student180@cmput401.ca', '678481' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '678481', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student181', 'StudentLastName181', 'student181', 'symmetricalSpoon#1', 'student181@cmput401.ca', '2599464' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2599464', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student182', 'StudentLastName182', 'student182', 'symmetricalSpoon#1', 'student182@cmput401.ca', '5227305' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5227305', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student183', 'StudentLastName183', 'student183', 'symmetricalSpoon#1', 'student183@cmput401.ca', '2540259' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2540259', 2, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student184', 'StudentLastName184', 'student184', 'symmetricalSpoon#1', 'student184@cmput401.ca', '2796556' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2796556', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student185', 'StudentLastName185', 'student185', 'symmetricalSpoon#1', 'student185@cmput401.ca', '3268819' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3268819', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student186', 'StudentLastName186', 'student186', 'symmetricalSpoon#1', 'student186@cmput401.ca', '1408442' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1408442', 0, '0', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student187', 'StudentLastName187', 'student187', 'symmetricalSpoon#1', 'student187@cmput401.ca', '7967874' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7967874', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student188', 'StudentLastName188', 'student188', 'symmetricalSpoon#1', 'student188@cmput401.ca', '6779057' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6779057', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student189', 'StudentLastName189', 'student189', 'symmetricalSpoon#1', 'student189@cmput401.ca', '1859672' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1859672', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student190', 'StudentLastName190', 'student190', 'symmetricalSpoon#1', 'student190@cmput401.ca', '2556669' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2556669', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student191', 'StudentLastName191', 'student191', 'symmetricalSpoon#1', 'student191@cmput401.ca', '8057507' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8057507', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student192', 'StudentLastName192', 'student192', 'symmetricalSpoon#1', 'student192@cmput401.ca', '5293935' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5293935', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student193', 'StudentLastName193', 'student193', 'symmetricalSpoon#1', 'student193@cmput401.ca', '8173839' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8173839', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student194', 'StudentLastName194', 'student194', 'symmetricalSpoon#1', 'student194@cmput401.ca', '7317218' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7317218', 0, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student195', 'StudentLastName195', 'student195', 'symmetricalSpoon#1', 'student195@cmput401.ca', '4032816' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4032816', 3, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student196', 'StudentLastName196', 'student196', 'symmetricalSpoon#1', 'student196@cmput401.ca', '4043519' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4043519', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student197', 'StudentLastName197', 'student197', 'symmetricalSpoon#1', 'student197@cmput401.ca', '3411477' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3411477', 1, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student198', 'StudentLastName198', 'student198', 'symmetricalSpoon#1', 'student198@cmput401.ca', '1495612' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1495612', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student199', 'StudentLastName199', 'student199', 'symmetricalSpoon#1', 'student199@cmput401.ca', '4117329' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4117329', 0, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



