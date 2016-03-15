-- To RUN: in terminal type mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql
insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student0', 'StudentLastName0', 'student0', 'symmetricalSpoon#1', 'student0@cmput401.ca', '5196064' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5196064', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student1', 'StudentLastName1', 'student1', 'symmetricalSpoon#1', 'student1@cmput401.ca', '7964702' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7964702', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student2', 'StudentLastName2', 'student2', 'symmetricalSpoon#1', 'student2@cmput401.ca', '5857430' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5857430', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student3', 'StudentLastName3', 'student3', 'symmetricalSpoon#1', 'student3@cmput401.ca', '8357365' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8357365', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student4', 'StudentLastName4', 'student4', 'symmetricalSpoon#1', 'student4@cmput401.ca', '9725104' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9725104', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student5', 'StudentLastName5', 'student5', 'symmetricalSpoon#1', 'student5@cmput401.ca', '7861827' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7861827', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student6', 'StudentLastName6', 'student6', 'symmetricalSpoon#1', 'student6@cmput401.ca', '4150699' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4150699', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student7', 'StudentLastName7', 'student7', 'symmetricalSpoon#1', 'student7@cmput401.ca', '6356161' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6356161', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student8', 'StudentLastName8', 'student8', 'symmetricalSpoon#1', 'student8@cmput401.ca', '8904194' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8904194', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student9', 'StudentLastName9', 'student9', 'symmetricalSpoon#1', 'student9@cmput401.ca', '2031371' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2031371', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student10', 'StudentLastName10', 'student10', 'symmetricalSpoon#1', 'student10@cmput401.ca', '4206840' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4206840', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student11', 'StudentLastName11', 'student11', 'symmetricalSpoon#1', 'student11@cmput401.ca', '2405229' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2405229', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student12', 'StudentLastName12', 'student12', 'symmetricalSpoon#1', 'student12@cmput401.ca', '9506062' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9506062', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student13', 'StudentLastName13', 'student13', 'symmetricalSpoon#1', 'student13@cmput401.ca', '7874731' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7874731', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student14', 'StudentLastName14', 'student14', 'symmetricalSpoon#1', 'student14@cmput401.ca', '6994619' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6994619', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student15', 'StudentLastName15', 'student15', 'symmetricalSpoon#1', 'student15@cmput401.ca', '5424367' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5424367', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student16', 'StudentLastName16', 'student16', 'symmetricalSpoon#1', 'student16@cmput401.ca', '8141060' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8141060', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student17', 'StudentLastName17', 'student17', 'symmetricalSpoon#1', 'student17@cmput401.ca', '9762082' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9762082', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student18', 'StudentLastName18', 'student18', 'symmetricalSpoon#1', 'student18@cmput401.ca', '5244612' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5244612', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student19', 'StudentLastName19', 'student19', 'symmetricalSpoon#1', 'student19@cmput401.ca', '1985203' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1985203', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student20', 'StudentLastName20', 'student20', 'symmetricalSpoon#1', 'student20@cmput401.ca', '5336868' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5336868', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student21', 'StudentLastName21', 'student21', 'symmetricalSpoon#1', 'student21@cmput401.ca', '9935876' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9935876', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student22', 'StudentLastName22', 'student22', 'symmetricalSpoon#1', 'student22@cmput401.ca', '7304666' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7304666', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student23', 'StudentLastName23', 'student23', 'symmetricalSpoon#1', 'student23@cmput401.ca', '1963972' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1963972', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student24', 'StudentLastName24', 'student24', 'symmetricalSpoon#1', 'student24@cmput401.ca', '9797776' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9797776', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student25', 'StudentLastName25', 'student25', 'symmetricalSpoon#1', 'student25@cmput401.ca', '7465981' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7465981', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student26', 'StudentLastName26', 'student26', 'symmetricalSpoon#1', 'student26@cmput401.ca', '8887780' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8887780', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student27', 'StudentLastName27', 'student27', 'symmetricalSpoon#1', 'student27@cmput401.ca', '5112083' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5112083', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student28', 'StudentLastName28', 'student28', 'symmetricalSpoon#1', 'student28@cmput401.ca', '6416829' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6416829', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student29', 'StudentLastName29', 'student29', 'symmetricalSpoon#1', 'student29@cmput401.ca', '2964120' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2964120', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student30', 'StudentLastName30', 'student30', 'symmetricalSpoon#1', 'student30@cmput401.ca', '7773706' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7773706', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student31', 'StudentLastName31', 'student31', 'symmetricalSpoon#1', 'student31@cmput401.ca', '1145933' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1145933', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student32', 'StudentLastName32', 'student32', 'symmetricalSpoon#1', 'student32@cmput401.ca', '8863519' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8863519', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student33', 'StudentLastName33', 'student33', 'symmetricalSpoon#1', 'student33@cmput401.ca', '2044110' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2044110', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student34', 'StudentLastName34', 'student34', 'symmetricalSpoon#1', 'student34@cmput401.ca', '2806644' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2806644', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student35', 'StudentLastName35', 'student35', 'symmetricalSpoon#1', 'student35@cmput401.ca', '5656977' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5656977', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student36', 'StudentLastName36', 'student36', 'symmetricalSpoon#1', 'student36@cmput401.ca', '1117678' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1117678', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student37', 'StudentLastName37', 'student37', 'symmetricalSpoon#1', 'student37@cmput401.ca', '6838655' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6838655', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student38', 'StudentLastName38', 'student38', 'symmetricalSpoon#1', 'student38@cmput401.ca', '7707021' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7707021', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student39', 'StudentLastName39', 'student39', 'symmetricalSpoon#1', 'student39@cmput401.ca', '3596040' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3596040', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student40', 'StudentLastName40', 'student40', 'symmetricalSpoon#1', 'student40@cmput401.ca', '1519252' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1519252', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student41', 'StudentLastName41', 'student41', 'symmetricalSpoon#1', 'student41@cmput401.ca', '1929044' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1929044', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student42', 'StudentLastName42', 'student42', 'symmetricalSpoon#1', 'student42@cmput401.ca', '3152016' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3152016', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student43', 'StudentLastName43', 'student43', 'symmetricalSpoon#1', 'student43@cmput401.ca', '4834534' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4834534', 2, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student44', 'StudentLastName44', 'student44', 'symmetricalSpoon#1', 'student44@cmput401.ca', '9543749' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9543749', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student45', 'StudentLastName45', 'student45', 'symmetricalSpoon#1', 'student45@cmput401.ca', '6749485' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6749485', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student46', 'StudentLastName46', 'student46', 'symmetricalSpoon#1', 'student46@cmput401.ca', '7327436' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7327436', 3, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student47', 'StudentLastName47', 'student47', 'symmetricalSpoon#1', 'student47@cmput401.ca', '7245826' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7245826', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student48', 'StudentLastName48', 'student48', 'symmetricalSpoon#1', 'student48@cmput401.ca', '8273909' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8273909', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student49', 'StudentLastName49', 'student49', 'symmetricalSpoon#1', 'student49@cmput401.ca', '8345140' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8345140', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



