-- To RUN: in terminal type mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql
insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student0', 'StudentLastName0', 'student0', 'symmetricalSpoon#1', 'student0@cmput401.ca', '7309567' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7309567', 0, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student1', 'StudentLastName1', 'student1', 'symmetricalSpoon#1', 'student1@cmput401.ca', '2840431' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2840431', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student2', 'StudentLastName2', 'student2', 'symmetricalSpoon#1', 'student2@cmput401.ca', '2236379' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2236379', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student3', 'StudentLastName3', 'student3', 'symmetricalSpoon#1', 'student3@cmput401.ca', '4042933' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4042933', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student4', 'StudentLastName4', 'student4', 'symmetricalSpoon#1', 'student4@cmput401.ca', '740057' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '740057', 0, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student5', 'StudentLastName5', 'student5', 'symmetricalSpoon#1', 'student5@cmput401.ca', '9808984' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9808984', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student6', 'StudentLastName6', 'student6', 'symmetricalSpoon#1', 'student6@cmput401.ca', '1310999' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1310999', 0, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student7', 'StudentLastName7', 'student7', 'symmetricalSpoon#1', 'student7@cmput401.ca', '7817144' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7817144', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student8', 'StudentLastName8', 'student8', 'symmetricalSpoon#1', 'student8@cmput401.ca', '7508329' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7508329', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student9', 'StudentLastName9', 'student9', 'symmetricalSpoon#1', 'student9@cmput401.ca', '4770916' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4770916', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student10', 'StudentLastName10', 'student10', 'symmetricalSpoon#1', 'student10@cmput401.ca', '9225300' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9225300', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student11', 'StudentLastName11', 'student11', 'symmetricalSpoon#1', 'student11@cmput401.ca', '8627737' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8627737', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student12', 'StudentLastName12', 'student12', 'symmetricalSpoon#1', 'student12@cmput401.ca', '4324776' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4324776', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student13', 'StudentLastName13', 'student13', 'symmetricalSpoon#1', 'student13@cmput401.ca', '2583865' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2583865', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student14', 'StudentLastName14', 'student14', 'symmetricalSpoon#1', 'student14@cmput401.ca', '3477755' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3477755', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student15', 'StudentLastName15', 'student15', 'symmetricalSpoon#1', 'student15@cmput401.ca', '4608332' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4608332', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student16', 'StudentLastName16', 'student16', 'symmetricalSpoon#1', 'student16@cmput401.ca', '9226190' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9226190', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student17', 'StudentLastName17', 'student17', 'symmetricalSpoon#1', 'student17@cmput401.ca', '2242054' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2242054', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student18', 'StudentLastName18', 'student18', 'symmetricalSpoon#1', 'student18@cmput401.ca', '5538524' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5538524', 0, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student19', 'StudentLastName19', 'student19', 'symmetricalSpoon#1', 'student19@cmput401.ca', '9255886' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9255886', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student20', 'StudentLastName20', 'student20', 'symmetricalSpoon#1', 'student20@cmput401.ca', '4894882' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4894882', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student21', 'StudentLastName21', 'student21', 'symmetricalSpoon#1', 'student21@cmput401.ca', '3810788' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3810788', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student22', 'StudentLastName22', 'student22', 'symmetricalSpoon#1', 'student22@cmput401.ca', '7151956' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7151956', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student23', 'StudentLastName23', 'student23', 'symmetricalSpoon#1', 'student23@cmput401.ca', '9941836' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9941836', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student24', 'StudentLastName24', 'student24', 'symmetricalSpoon#1', 'student24@cmput401.ca', '1665939' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1665939', 0, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student25', 'StudentLastName25', 'student25', 'symmetricalSpoon#1', 'student25@cmput401.ca', '919238' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '919238', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student26', 'StudentLastName26', 'student26', 'symmetricalSpoon#1', 'student26@cmput401.ca', '3470842' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3470842', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student27', 'StudentLastName27', 'student27', 'symmetricalSpoon#1', 'student27@cmput401.ca', '9008665' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9008665', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student28', 'StudentLastName28', 'student28', 'symmetricalSpoon#1', 'student28@cmput401.ca', '127882' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '127882', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student29', 'StudentLastName29', 'student29', 'symmetricalSpoon#1', 'student29@cmput401.ca', '8571473' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8571473', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student30', 'StudentLastName30', 'student30', 'symmetricalSpoon#1', 'student30@cmput401.ca', '8947713' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8947713', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student31', 'StudentLastName31', 'student31', 'symmetricalSpoon#1', 'student31@cmput401.ca', '3400499' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3400499', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student32', 'StudentLastName32', 'student32', 'symmetricalSpoon#1', 'student32@cmput401.ca', '4569775' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4569775', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student33', 'StudentLastName33', 'student33', 'symmetricalSpoon#1', 'student33@cmput401.ca', '7391524' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7391524', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student34', 'StudentLastName34', 'student34', 'symmetricalSpoon#1', 'student34@cmput401.ca', '6467730' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6467730', 0, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student35', 'StudentLastName35', 'student35', 'symmetricalSpoon#1', 'student35@cmput401.ca', '1544681' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1544681', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student36', 'StudentLastName36', 'student36', 'symmetricalSpoon#1', 'student36@cmput401.ca', '2052965' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2052965', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student37', 'StudentLastName37', 'student37', 'symmetricalSpoon#1', 'student37@cmput401.ca', '522118' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '522118', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student38', 'StudentLastName38', 'student38', 'symmetricalSpoon#1', 'student38@cmput401.ca', '1094239' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1094239', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student39', 'StudentLastName39', 'student39', 'symmetricalSpoon#1', 'student39@cmput401.ca', '5475469' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5475469', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student40', 'StudentLastName40', 'student40', 'symmetricalSpoon#1', 'student40@cmput401.ca', '4882885' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4882885', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student41', 'StudentLastName41', 'student41', 'symmetricalSpoon#1', 'student41@cmput401.ca', '8491632' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8491632', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student42', 'StudentLastName42', 'student42', 'symmetricalSpoon#1', 'student42@cmput401.ca', '8956235' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8956235', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student43', 'StudentLastName43', 'student43', 'symmetricalSpoon#1', 'student43@cmput401.ca', '4563615' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4563615', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student44', 'StudentLastName44', 'student44', 'symmetricalSpoon#1', 'student44@cmput401.ca', '1262396' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1262396', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student45', 'StudentLastName45', 'student45', 'symmetricalSpoon#1', 'student45@cmput401.ca', '7267143' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7267143', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student46', 'StudentLastName46', 'student46', 'symmetricalSpoon#1', 'student46@cmput401.ca', '5028207' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5028207', 3, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student47', 'StudentLastName47', 'student47', 'symmetricalSpoon#1', 'student47@cmput401.ca', '3331505' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3331505', 2, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student48', 'StudentLastName48', 'student48', 'symmetricalSpoon#1', 'student48@cmput401.ca', '9360187' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9360187', 0, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student49', 'StudentLastName49', 'student49', 'symmetricalSpoon#1', 'student49@cmput401.ca', '331478' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '331478', 1, 'CMPUT469', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



