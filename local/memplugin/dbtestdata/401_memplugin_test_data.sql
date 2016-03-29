-- To RUN: in terminal type mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql

-- Delete/truncate tables before inserting the test data.
delete from mdl_user where username like 'student%';

truncate mdl_mem_booklet_data;

truncate mdl_mem_mark_stats;

truncate mdl_mem_pages;


-- Insert test data.
insert into mdl_course (category, sortorder, fullname, shortname, summary, format)  values ('1', '10000', 'CMPUT401 Test Course', 'C401', 'This is a test course.', 'weeks');

insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student0', 'StudentLastName0', 'student0', 'symmetricalSpoon#1', 'student0@cmput401.ca', '1246934' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1246934', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student1', 'StudentLastName1', 'student1', 'symmetricalSpoon#1', 'student1@cmput401.ca', '9864216' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9864216', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student2', 'StudentLastName2', 'student2', 'symmetricalSpoon#1', 'student2@cmput401.ca', '5162511' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5162511', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student3', 'StudentLastName3', 'student3', 'symmetricalSpoon#1', 'student3@cmput401.ca', '738593' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '738593', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student4', 'StudentLastName4', 'student4', 'symmetricalSpoon#1', 'student4@cmput401.ca', '7673442' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7673442', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student5', 'StudentLastName5', 'student5', 'symmetricalSpoon#1', 'student5@cmput401.ca', '3807549' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3807549', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student6', 'StudentLastName6', 'student6', 'symmetricalSpoon#1', 'student6@cmput401.ca', '4138739' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4138739', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student7', 'StudentLastName7', 'student7', 'symmetricalSpoon#1', 'student7@cmput401.ca', '7150856' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7150856', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student8', 'StudentLastName8', 'student8', 'symmetricalSpoon#1', 'student8@cmput401.ca', '9271887' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9271887', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student9', 'StudentLastName9', 'student9', 'symmetricalSpoon#1', 'student9@cmput401.ca', '6967831' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6967831', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student10', 'StudentLastName10', 'student10', 'symmetricalSpoon#1', 'student10@cmput401.ca', '1301572' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1301572', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student11', 'StudentLastName11', 'student11', 'symmetricalSpoon#1', 'student11@cmput401.ca', '543418' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '543418', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student12', 'StudentLastName12', 'student12', 'symmetricalSpoon#1', 'student12@cmput401.ca', '6187583' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6187583', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student13', 'StudentLastName13', 'student13', 'symmetricalSpoon#1', 'student13@cmput401.ca', '2698128' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2698128', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student14', 'StudentLastName14', 'student14', 'symmetricalSpoon#1', 'student14@cmput401.ca', '8137074' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8137074', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student15', 'StudentLastName15', 'student15', 'symmetricalSpoon#1', 'student15@cmput401.ca', '1836279' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1836279', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student16', 'StudentLastName16', 'student16', 'symmetricalSpoon#1', 'student16@cmput401.ca', '9076127' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9076127', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student17', 'StudentLastName17', 'student17', 'symmetricalSpoon#1', 'student17@cmput401.ca', '7745722' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7745722', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student18', 'StudentLastName18', 'student18', 'symmetricalSpoon#1', 'student18@cmput401.ca', '5018923' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5018923', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student19', 'StudentLastName19', 'student19', 'symmetricalSpoon#1', 'student19@cmput401.ca', '925568' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '925568', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student20', 'StudentLastName20', 'student20', 'symmetricalSpoon#1', 'student20@cmput401.ca', '5298547' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5298547', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student21', 'StudentLastName21', 'student21', 'symmetricalSpoon#1', 'student21@cmput401.ca', '8863020' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8863020', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student22', 'StudentLastName22', 'student22', 'symmetricalSpoon#1', 'student22@cmput401.ca', '5472788' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5472788', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student23', 'StudentLastName23', 'student23', 'symmetricalSpoon#1', 'student23@cmput401.ca', '794008' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '794008', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student24', 'StudentLastName24', 'student24', 'symmetricalSpoon#1', 'student24@cmput401.ca', '8348237' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8348237', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student25', 'StudentLastName25', 'student25', 'symmetricalSpoon#1', 'student25@cmput401.ca', '8080648' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8080648', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student26', 'StudentLastName26', 'student26', 'symmetricalSpoon#1', 'student26@cmput401.ca', '1509400' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1509400', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student27', 'StudentLastName27', 'student27', 'symmetricalSpoon#1', 'student27@cmput401.ca', '6354284' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6354284', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student28', 'StudentLastName28', 'student28', 'symmetricalSpoon#1', 'student28@cmput401.ca', '5117705' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5117705', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student29', 'StudentLastName29', 'student29', 'symmetricalSpoon#1', 'student29@cmput401.ca', '1940092' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1940092', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student30', 'StudentLastName30', 'student30', 'symmetricalSpoon#1', 'student30@cmput401.ca', '1847595' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1847595', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student31', 'StudentLastName31', 'student31', 'symmetricalSpoon#1', 'student31@cmput401.ca', '1765091' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1765091', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student32', 'StudentLastName32', 'student32', 'symmetricalSpoon#1', 'student32@cmput401.ca', '4217799' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4217799', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student33', 'StudentLastName33', 'student33', 'symmetricalSpoon#1', 'student33@cmput401.ca', '7110398' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7110398', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student34', 'StudentLastName34', 'student34', 'symmetricalSpoon#1', 'student34@cmput401.ca', '7913529' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7913529', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student35', 'StudentLastName35', 'student35', 'symmetricalSpoon#1', 'student35@cmput401.ca', '4040809' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4040809', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student36', 'StudentLastName36', 'student36', 'symmetricalSpoon#1', 'student36@cmput401.ca', '8322891' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8322891', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student37', 'StudentLastName37', 'student37', 'symmetricalSpoon#1', 'student37@cmput401.ca', '6518065' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6518065', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student38', 'StudentLastName38', 'student38', 'symmetricalSpoon#1', 'student38@cmput401.ca', '6496574' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6496574', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student39', 'StudentLastName39', 'student39', 'symmetricalSpoon#1', 'student39@cmput401.ca', '1601657' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1601657', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student40', 'StudentLastName40', 'student40', 'symmetricalSpoon#1', 'student40@cmput401.ca', '5258144' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5258144', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student41', 'StudentLastName41', 'student41', 'symmetricalSpoon#1', 'student41@cmput401.ca', '7304787' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7304787', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student42', 'StudentLastName42', 'student42', 'symmetricalSpoon#1', 'student42@cmput401.ca', '1522334' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1522334', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student43', 'StudentLastName43', 'student43', 'symmetricalSpoon#1', 'student43@cmput401.ca', '8979267' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8979267', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student44', 'StudentLastName44', 'student44', 'symmetricalSpoon#1', 'student44@cmput401.ca', '8659582' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8659582', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student45', 'StudentLastName45', 'student45', 'symmetricalSpoon#1', 'student45@cmput401.ca', '3149959' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3149959', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student46', 'StudentLastName46', 'student46', 'symmetricalSpoon#1', 'student46@cmput401.ca', '4268538' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4268538', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student47', 'StudentLastName47', 'student47', 'symmetricalSpoon#1', 'student47@cmput401.ca', '7833549' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7833549', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student48', 'StudentLastName48', 'student48', 'symmetricalSpoon#1', 'student48@cmput401.ca', '357928' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '357928', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student49', 'StudentLastName49', 'student49', 'symmetricalSpoon#1', 'student49@cmput401.ca', '3599051' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3599051', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student50', 'StudentLastName50', 'student50', 'symmetricalSpoon#1', 'student50@cmput401.ca', '5102188' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5102188', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student51', 'StudentLastName51', 'student51', 'symmetricalSpoon#1', 'student51@cmput401.ca', '509288' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '509288', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student52', 'StudentLastName52', 'student52', 'symmetricalSpoon#1', 'student52@cmput401.ca', '5882084' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5882084', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student53', 'StudentLastName53', 'student53', 'symmetricalSpoon#1', 'student53@cmput401.ca', '9403737' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9403737', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student54', 'StudentLastName54', 'student54', 'symmetricalSpoon#1', 'student54@cmput401.ca', '9461291' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9461291', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student55', 'StudentLastName55', 'student55', 'symmetricalSpoon#1', 'student55@cmput401.ca', '8792029' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8792029', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student56', 'StudentLastName56', 'student56', 'symmetricalSpoon#1', 'student56@cmput401.ca', '892999' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '892999', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student57', 'StudentLastName57', 'student57', 'symmetricalSpoon#1', 'student57@cmput401.ca', '1588573' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1588573', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student58', 'StudentLastName58', 'student58', 'symmetricalSpoon#1', 'student58@cmput401.ca', '2580590' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2580590', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student59', 'StudentLastName59', 'student59', 'symmetricalSpoon#1', 'student59@cmput401.ca', '993328' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '993328', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student60', 'StudentLastName60', 'student60', 'symmetricalSpoon#1', 'student60@cmput401.ca', '3454789' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3454789', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student61', 'StudentLastName61', 'student61', 'symmetricalSpoon#1', 'student61@cmput401.ca', '5998922' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5998922', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student62', 'StudentLastName62', 'student62', 'symmetricalSpoon#1', 'student62@cmput401.ca', '1374154' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1374154', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student63', 'StudentLastName63', 'student63', 'symmetricalSpoon#1', 'student63@cmput401.ca', '8043110' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8043110', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student64', 'StudentLastName64', 'student64', 'symmetricalSpoon#1', 'student64@cmput401.ca', '1222496' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1222496', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student65', 'StudentLastName65', 'student65', 'symmetricalSpoon#1', 'student65@cmput401.ca', '3906768' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3906768', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student66', 'StudentLastName66', 'student66', 'symmetricalSpoon#1', 'student66@cmput401.ca', '2349100' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2349100', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student67', 'StudentLastName67', 'student67', 'symmetricalSpoon#1', 'student67@cmput401.ca', '1460567' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1460567', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student68', 'StudentLastName68', 'student68', 'symmetricalSpoon#1', 'student68@cmput401.ca', '3409976' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3409976', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student69', 'StudentLastName69', 'student69', 'symmetricalSpoon#1', 'student69@cmput401.ca', '2156365' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2156365', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student70', 'StudentLastName70', 'student70', 'symmetricalSpoon#1', 'student70@cmput401.ca', '2673992' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2673992', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student71', 'StudentLastName71', 'student71', 'symmetricalSpoon#1', 'student71@cmput401.ca', '6531580' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6531580', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student72', 'StudentLastName72', 'student72', 'symmetricalSpoon#1', 'student72@cmput401.ca', '5884443' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5884443', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student73', 'StudentLastName73', 'student73', 'symmetricalSpoon#1', 'student73@cmput401.ca', '9315879' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9315879', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student74', 'StudentLastName74', 'student74', 'symmetricalSpoon#1', 'student74@cmput401.ca', '1442120' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1442120', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student75', 'StudentLastName75', 'student75', 'symmetricalSpoon#1', 'student75@cmput401.ca', '2323990' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2323990', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student76', 'StudentLastName76', 'student76', 'symmetricalSpoon#1', 'student76@cmput401.ca', '5104018' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5104018', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student77', 'StudentLastName77', 'student77', 'symmetricalSpoon#1', 'student77@cmput401.ca', '4766786' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4766786', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student78', 'StudentLastName78', 'student78', 'symmetricalSpoon#1', 'student78@cmput401.ca', '5516054' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5516054', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student79', 'StudentLastName79', 'student79', 'symmetricalSpoon#1', 'student79@cmput401.ca', '6044685' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6044685', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student80', 'StudentLastName80', 'student80', 'symmetricalSpoon#1', 'student80@cmput401.ca', '3652064' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3652064', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student81', 'StudentLastName81', 'student81', 'symmetricalSpoon#1', 'student81@cmput401.ca', '3231838' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3231838', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student82', 'StudentLastName82', 'student82', 'symmetricalSpoon#1', 'student82@cmput401.ca', '7991904' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7991904', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student83', 'StudentLastName83', 'student83', 'symmetricalSpoon#1', 'student83@cmput401.ca', '1076482' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1076482', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student84', 'StudentLastName84', 'student84', 'symmetricalSpoon#1', 'student84@cmput401.ca', '3323652' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3323652', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student85', 'StudentLastName85', 'student85', 'symmetricalSpoon#1', 'student85@cmput401.ca', '3985994' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3985994', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student86', 'StudentLastName86', 'student86', 'symmetricalSpoon#1', 'student86@cmput401.ca', '6117793' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6117793', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student87', 'StudentLastName87', 'student87', 'symmetricalSpoon#1', 'student87@cmput401.ca', '6549481' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6549481', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student88', 'StudentLastName88', 'student88', 'symmetricalSpoon#1', 'student88@cmput401.ca', '6702947' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6702947', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student89', 'StudentLastName89', 'student89', 'symmetricalSpoon#1', 'student89@cmput401.ca', '9962237' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9962237', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student90', 'StudentLastName90', 'student90', 'symmetricalSpoon#1', 'student90@cmput401.ca', '7940864' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7940864', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student91', 'StudentLastName91', 'student91', 'symmetricalSpoon#1', 'student91@cmput401.ca', '2025348' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2025348', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student92', 'StudentLastName92', 'student92', 'symmetricalSpoon#1', 'student92@cmput401.ca', '6160428' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6160428', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student93', 'StudentLastName93', 'student93', 'symmetricalSpoon#1', 'student93@cmput401.ca', '6769272' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6769272', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student94', 'StudentLastName94', 'student94', 'symmetricalSpoon#1', 'student94@cmput401.ca', '3766501' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3766501', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student95', 'StudentLastName95', 'student95', 'symmetricalSpoon#1', 'student95@cmput401.ca', '7829620' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7829620', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student96', 'StudentLastName96', 'student96', 'symmetricalSpoon#1', 'student96@cmput401.ca', '8295327' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8295327', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student97', 'StudentLastName97', 'student97', 'symmetricalSpoon#1', 'student97@cmput401.ca', '4459225' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4459225', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student98', 'StudentLastName98', 'student98', 'symmetricalSpoon#1', 'student98@cmput401.ca', '3248733' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3248733', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student99', 'StudentLastName99', 'student99', 'symmetricalSpoon#1', 'student99@cmput401.ca', '1128025' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1128025', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student100', 'StudentLastName100', 'student100', 'symmetricalSpoon#1', 'student100@cmput401.ca', '2139375' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2139375', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student101', 'StudentLastName101', 'student101', 'symmetricalSpoon#1', 'student101@cmput401.ca', '3842190' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3842190', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student102', 'StudentLastName102', 'student102', 'symmetricalSpoon#1', 'student102@cmput401.ca', '9116190' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9116190', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student103', 'StudentLastName103', 'student103', 'symmetricalSpoon#1', 'student103@cmput401.ca', '4700735' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4700735', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student104', 'StudentLastName104', 'student104', 'symmetricalSpoon#1', 'student104@cmput401.ca', '3025106' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3025106', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student105', 'StudentLastName105', 'student105', 'symmetricalSpoon#1', 'student105@cmput401.ca', '2071120' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2071120', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student106', 'StudentLastName106', 'student106', 'symmetricalSpoon#1', 'student106@cmput401.ca', '2271607' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2271607', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student107', 'StudentLastName107', 'student107', 'symmetricalSpoon#1', 'student107@cmput401.ca', '8552115' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8552115', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student108', 'StudentLastName108', 'student108', 'symmetricalSpoon#1', 'student108@cmput401.ca', '8972199' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8972199', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student109', 'StudentLastName109', 'student109', 'symmetricalSpoon#1', 'student109@cmput401.ca', '7088866' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7088866', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student110', 'StudentLastName110', 'student110', 'symmetricalSpoon#1', 'student110@cmput401.ca', '9038740' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9038740', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student111', 'StudentLastName111', 'student111', 'symmetricalSpoon#1', 'student111@cmput401.ca', '6955426' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6955426', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student112', 'StudentLastName112', 'student112', 'symmetricalSpoon#1', 'student112@cmput401.ca', '4137400' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4137400', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student113', 'StudentLastName113', 'student113', 'symmetricalSpoon#1', 'student113@cmput401.ca', '1232014' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1232014', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student114', 'StudentLastName114', 'student114', 'symmetricalSpoon#1', 'student114@cmput401.ca', '5210442' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5210442', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student115', 'StudentLastName115', 'student115', 'symmetricalSpoon#1', 'student115@cmput401.ca', '5184917' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5184917', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student116', 'StudentLastName116', 'student116', 'symmetricalSpoon#1', 'student116@cmput401.ca', '347682' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '347682', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student117', 'StudentLastName117', 'student117', 'symmetricalSpoon#1', 'student117@cmput401.ca', '7690233' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7690233', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student118', 'StudentLastName118', 'student118', 'symmetricalSpoon#1', 'student118@cmput401.ca', '3145457' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3145457', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student119', 'StudentLastName119', 'student119', 'symmetricalSpoon#1', 'student119@cmput401.ca', '3708489' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3708489', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student120', 'StudentLastName120', 'student120', 'symmetricalSpoon#1', 'student120@cmput401.ca', '1169314' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1169314', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student121', 'StudentLastName121', 'student121', 'symmetricalSpoon#1', 'student121@cmput401.ca', '9353749' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9353749', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student122', 'StudentLastName122', 'student122', 'symmetricalSpoon#1', 'student122@cmput401.ca', '282694' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '282694', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student123', 'StudentLastName123', 'student123', 'symmetricalSpoon#1', 'student123@cmput401.ca', '3601273' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3601273', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student124', 'StudentLastName124', 'student124', 'symmetricalSpoon#1', 'student124@cmput401.ca', '4493030' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4493030', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student125', 'StudentLastName125', 'student125', 'symmetricalSpoon#1', 'student125@cmput401.ca', '5572077' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5572077', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student126', 'StudentLastName126', 'student126', 'symmetricalSpoon#1', 'student126@cmput401.ca', '3452705' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3452705', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student127', 'StudentLastName127', 'student127', 'symmetricalSpoon#1', 'student127@cmput401.ca', '1244925' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1244925', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student128', 'StudentLastName128', 'student128', 'symmetricalSpoon#1', 'student128@cmput401.ca', '4163023' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4163023', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student129', 'StudentLastName129', 'student129', 'symmetricalSpoon#1', 'student129@cmput401.ca', '3901510' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3901510', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student130', 'StudentLastName130', 'student130', 'symmetricalSpoon#1', 'student130@cmput401.ca', '6713719' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6713719', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student131', 'StudentLastName131', 'student131', 'symmetricalSpoon#1', 'student131@cmput401.ca', '6955064' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6955064', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student132', 'StudentLastName132', 'student132', 'symmetricalSpoon#1', 'student132@cmput401.ca', '1211610' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1211610', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student133', 'StudentLastName133', 'student133', 'symmetricalSpoon#1', 'student133@cmput401.ca', '5099278' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5099278', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student134', 'StudentLastName134', 'student134', 'symmetricalSpoon#1', 'student134@cmput401.ca', '8136187' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8136187', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student135', 'StudentLastName135', 'student135', 'symmetricalSpoon#1', 'student135@cmput401.ca', '1084313' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1084313', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student136', 'StudentLastName136', 'student136', 'symmetricalSpoon#1', 'student136@cmput401.ca', '7003125' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7003125', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student137', 'StudentLastName137', 'student137', 'symmetricalSpoon#1', 'student137@cmput401.ca', '3648872' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3648872', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student138', 'StudentLastName138', 'student138', 'symmetricalSpoon#1', 'student138@cmput401.ca', '2806295' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2806295', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student139', 'StudentLastName139', 'student139', 'symmetricalSpoon#1', 'student139@cmput401.ca', '5429243' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5429243', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student140', 'StudentLastName140', 'student140', 'symmetricalSpoon#1', 'student140@cmput401.ca', '3278374' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3278374', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student141', 'StudentLastName141', 'student141', 'symmetricalSpoon#1', 'student141@cmput401.ca', '3508400' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3508400', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student142', 'StudentLastName142', 'student142', 'symmetricalSpoon#1', 'student142@cmput401.ca', '5891202' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5891202', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student143', 'StudentLastName143', 'student143', 'symmetricalSpoon#1', 'student143@cmput401.ca', '8015313' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8015313', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student144', 'StudentLastName144', 'student144', 'symmetricalSpoon#1', 'student144@cmput401.ca', '4516771' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4516771', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student145', 'StudentLastName145', 'student145', 'symmetricalSpoon#1', 'student145@cmput401.ca', '7268602' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7268602', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student146', 'StudentLastName146', 'student146', 'symmetricalSpoon#1', 'student146@cmput401.ca', '7679271' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7679271', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student147', 'StudentLastName147', 'student147', 'symmetricalSpoon#1', 'student147@cmput401.ca', '3624641' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3624641', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student148', 'StudentLastName148', 'student148', 'symmetricalSpoon#1', 'student148@cmput401.ca', '3380956' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3380956', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student149', 'StudentLastName149', 'student149', 'symmetricalSpoon#1', 'student149@cmput401.ca', '9076330' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9076330', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student150', 'StudentLastName150', 'student150', 'symmetricalSpoon#1', 'student150@cmput401.ca', '8649750' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8649750', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student151', 'StudentLastName151', 'student151', 'symmetricalSpoon#1', 'student151@cmput401.ca', '9733019' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9733019', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student152', 'StudentLastName152', 'student152', 'symmetricalSpoon#1', 'student152@cmput401.ca', '6700219' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6700219', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student153', 'StudentLastName153', 'student153', 'symmetricalSpoon#1', 'student153@cmput401.ca', '4067582' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4067582', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student154', 'StudentLastName154', 'student154', 'symmetricalSpoon#1', 'student154@cmput401.ca', '5962666' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5962666', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student155', 'StudentLastName155', 'student155', 'symmetricalSpoon#1', 'student155@cmput401.ca', '4529876' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4529876', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student156', 'StudentLastName156', 'student156', 'symmetricalSpoon#1', 'student156@cmput401.ca', '7116685' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7116685', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student157', 'StudentLastName157', 'student157', 'symmetricalSpoon#1', 'student157@cmput401.ca', '6367616' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6367616', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student158', 'StudentLastName158', 'student158', 'symmetricalSpoon#1', 'student158@cmput401.ca', '4600270' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4600270', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student159', 'StudentLastName159', 'student159', 'symmetricalSpoon#1', 'student159@cmput401.ca', '7000411' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7000411', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student160', 'StudentLastName160', 'student160', 'symmetricalSpoon#1', 'student160@cmput401.ca', '9737891' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9737891', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student161', 'StudentLastName161', 'student161', 'symmetricalSpoon#1', 'student161@cmput401.ca', '7997592' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7997592', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student162', 'StudentLastName162', 'student162', 'symmetricalSpoon#1', 'student162@cmput401.ca', '7598857' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7598857', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student163', 'StudentLastName163', 'student163', 'symmetricalSpoon#1', 'student163@cmput401.ca', '1903382' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1903382', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student164', 'StudentLastName164', 'student164', 'symmetricalSpoon#1', 'student164@cmput401.ca', '8715994' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8715994', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student165', 'StudentLastName165', 'student165', 'symmetricalSpoon#1', 'student165@cmput401.ca', '4898543' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4898543', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student166', 'StudentLastName166', 'student166', 'symmetricalSpoon#1', 'student166@cmput401.ca', '1257941' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1257941', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student167', 'StudentLastName167', 'student167', 'symmetricalSpoon#1', 'student167@cmput401.ca', '5473366' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5473366', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student168', 'StudentLastName168', 'student168', 'symmetricalSpoon#1', 'student168@cmput401.ca', '4170766' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4170766', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student169', 'StudentLastName169', 'student169', 'symmetricalSpoon#1', 'student169@cmput401.ca', '5022272' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5022272', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student170', 'StudentLastName170', 'student170', 'symmetricalSpoon#1', 'student170@cmput401.ca', '3139009' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3139009', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student171', 'StudentLastName171', 'student171', 'symmetricalSpoon#1', 'student171@cmput401.ca', '6215661' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6215661', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student172', 'StudentLastName172', 'student172', 'symmetricalSpoon#1', 'student172@cmput401.ca', '7512803' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7512803', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student173', 'StudentLastName173', 'student173', 'symmetricalSpoon#1', 'student173@cmput401.ca', '3855755' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3855755', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student174', 'StudentLastName174', 'student174', 'symmetricalSpoon#1', 'student174@cmput401.ca', '2509271' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2509271', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student175', 'StudentLastName175', 'student175', 'symmetricalSpoon#1', 'student175@cmput401.ca', '9310871' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9310871', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student176', 'StudentLastName176', 'student176', 'symmetricalSpoon#1', 'student176@cmput401.ca', '433667' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '433667', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student177', 'StudentLastName177', 'student177', 'symmetricalSpoon#1', 'student177@cmput401.ca', '1243085' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1243085', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student178', 'StudentLastName178', 'student178', 'symmetricalSpoon#1', 'student178@cmput401.ca', '3660738' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3660738', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student179', 'StudentLastName179', 'student179', 'symmetricalSpoon#1', 'student179@cmput401.ca', '1098312' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1098312', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student180', 'StudentLastName180', 'student180', 'symmetricalSpoon#1', 'student180@cmput401.ca', '4184003' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4184003', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student181', 'StudentLastName181', 'student181', 'symmetricalSpoon#1', 'student181@cmput401.ca', '8943000' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8943000', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student182', 'StudentLastName182', 'student182', 'symmetricalSpoon#1', 'student182@cmput401.ca', '3879471' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3879471', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student183', 'StudentLastName183', 'student183', 'symmetricalSpoon#1', 'student183@cmput401.ca', '2710970' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2710970', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student184', 'StudentLastName184', 'student184', 'symmetricalSpoon#1', 'student184@cmput401.ca', '5281771' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5281771', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student185', 'StudentLastName185', 'student185', 'symmetricalSpoon#1', 'student185@cmput401.ca', '3247765' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3247765', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student186', 'StudentLastName186', 'student186', 'symmetricalSpoon#1', 'student186@cmput401.ca', '7055934' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7055934', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student187', 'StudentLastName187', 'student187', 'symmetricalSpoon#1', 'student187@cmput401.ca', '7660375' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7660375', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student188', 'StudentLastName188', 'student188', 'symmetricalSpoon#1', 'student188@cmput401.ca', '3916868' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3916868', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student189', 'StudentLastName189', 'student189', 'symmetricalSpoon#1', 'student189@cmput401.ca', '6634448' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6634448', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student190', 'StudentLastName190', 'student190', 'symmetricalSpoon#1', 'student190@cmput401.ca', '5596369' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5596369', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student191', 'StudentLastName191', 'student191', 'symmetricalSpoon#1', 'student191@cmput401.ca', '2685399' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2685399', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student192', 'StudentLastName192', 'student192', 'symmetricalSpoon#1', 'student192@cmput401.ca', '4127080' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4127080', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student193', 'StudentLastName193', 'student193', 'symmetricalSpoon#1', 'student193@cmput401.ca', '1964872' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1964872', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student194', 'StudentLastName194', 'student194', 'symmetricalSpoon#1', 'student194@cmput401.ca', '9873490' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9873490', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student195', 'StudentLastName195', 'student195', 'symmetricalSpoon#1', 'student195@cmput401.ca', '5444945' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5444945', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student196', 'StudentLastName196', 'student196', 'symmetricalSpoon#1', 'student196@cmput401.ca', '1093398' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1093398', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student197', 'StudentLastName197', 'student197', 'symmetricalSpoon#1', 'student197@cmput401.ca', '385292' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '385292', 3, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student198', 'StudentLastName198', 'student198', 'symmetricalSpoon#1', 'student198@cmput401.ca', '5026974' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5026974', 0, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student199', 'StudentLastName199', 'student199', 'symmetricalSpoon#1', 'student199@cmput401.ca', '9017876' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9017876', 1, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



