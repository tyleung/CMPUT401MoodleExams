-- To RUN: in terminal type mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql

-- Delete/truncate tables before inserting the test data.
delete from mdl_user where username like 'student%';

truncate mdl_mem_booklet_data;

truncate mdl_mem_mark_stats;

truncate mdl_mem_pages;


-- Insert test data.
insert into mdl_course (category, sortorder, fullname, shortname, summary, format)  values ('1', '10000', 'CMPUT401 Test Course', 'C401', 'This is a test course.', 'weeks');

insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student0', 'StudentLastName0', 'student0', 'symmetricalSpoon#1', 'student0@cmput401.ca', '3565054' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3565054', 3, '4', '2016 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student1', 'StudentLastName1', 'student1', 'symmetricalSpoon#1', 'student1@cmput401.ca', '9917286' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9917286', 1, '3', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student2', 'StudentLastName2', 'student2', 'symmetricalSpoon#1', 'student2@cmput401.ca', '5497231' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5497231', 2, '1', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student3', 'StudentLastName3', 'student3', 'symmetricalSpoon#1', 'student3@cmput401.ca', '1103864' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1103864', 3, '2', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student4', 'StudentLastName4', 'student4', 'symmetricalSpoon#1', 'student4@cmput401.ca', '5492303' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5492303', 0, '3', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student5', 'StudentLastName5', 'student5', 'symmetricalSpoon#1', 'student5@cmput401.ca', '7162697' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7162697', 0, '0', '2012 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student6', 'StudentLastName6', 'student6', 'symmetricalSpoon#1', 'student6@cmput401.ca', '8251875' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8251875', 1, '3', '2014 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student7', 'StudentLastName7', 'student7', 'symmetricalSpoon#1', 'student7@cmput401.ca', '3617570' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3617570', 3, '3', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student8', 'StudentLastName8', 'student8', 'symmetricalSpoon#1', 'student8@cmput401.ca', '2835139' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2835139', 2, '3', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student9', 'StudentLastName9', 'student9', 'symmetricalSpoon#1', 'student9@cmput401.ca', '2636912' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2636912', 3, '4', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student10', 'StudentLastName10', 'student10', 'symmetricalSpoon#1', 'student10@cmput401.ca', '5681920' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5681920', 1, '2', '2012 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student11', 'StudentLastName11', 'student11', 'symmetricalSpoon#1', 'student11@cmput401.ca', '2843229' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2843229', 2, '2', '2012 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student12', 'StudentLastName12', 'student12', 'symmetricalSpoon#1', 'student12@cmput401.ca', '8168939' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8168939', 0, '3', '2012 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student13', 'StudentLastName13', 'student13', 'symmetricalSpoon#1', 'student13@cmput401.ca', '8697284' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8697284', 0, '0', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student14', 'StudentLastName14', 'student14', 'symmetricalSpoon#1', 'student14@cmput401.ca', '4073117' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4073117', 3, '0', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student15', 'StudentLastName15', 'student15', 'symmetricalSpoon#1', 'student15@cmput401.ca', '5667062' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5667062', 2, '3', '2014 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student16', 'StudentLastName16', 'student16', 'symmetricalSpoon#1', 'student16@cmput401.ca', '3835732' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3835732', 1, '2', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student17', 'StudentLastName17', 'student17', 'symmetricalSpoon#1', 'student17@cmput401.ca', '5836821' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5836821', 3, '2', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student18', 'StudentLastName18', 'student18', 'symmetricalSpoon#1', 'student18@cmput401.ca', '1667364' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1667364', 0, '4', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student19', 'StudentLastName19', 'student19', 'symmetricalSpoon#1', 'student19@cmput401.ca', '1836672' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1836672', 1, '4', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student20', 'StudentLastName20', 'student20', 'symmetricalSpoon#1', 'student20@cmput401.ca', '4758308' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4758308', 0, '3', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student21', 'StudentLastName21', 'student21', 'symmetricalSpoon#1', 'student21@cmput401.ca', '9121533' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9121533', 0, '1', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student22', 'StudentLastName22', 'student22', 'symmetricalSpoon#1', 'student22@cmput401.ca', '8268438' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8268438', 0, '1', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student23', 'StudentLastName23', 'student23', 'symmetricalSpoon#1', 'student23@cmput401.ca', '8447360' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8447360', 0, '0', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student24', 'StudentLastName24', 'student24', 'symmetricalSpoon#1', 'student24@cmput401.ca', '9759484' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9759484', 3, '0', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student25', 'StudentLastName25', 'student25', 'symmetricalSpoon#1', 'student25@cmput401.ca', '1889272' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1889272', 1, '2', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student26', 'StudentLastName26', 'student26', 'symmetricalSpoon#1', 'student26@cmput401.ca', '6348145' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6348145', 0, '4', '2012 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student27', 'StudentLastName27', 'student27', 'symmetricalSpoon#1', 'student27@cmput401.ca', '3544121' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3544121', 3, '3', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student28', 'StudentLastName28', 'student28', 'symmetricalSpoon#1', 'student28@cmput401.ca', '2094478' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2094478', 3, '4', '2014 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student29', 'StudentLastName29', 'student29', 'symmetricalSpoon#1', 'student29@cmput401.ca', '6132101' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6132101', 1, '3', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student30', 'StudentLastName30', 'student30', 'symmetricalSpoon#1', 'student30@cmput401.ca', '1886789' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1886789', 3, '2', '2014 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student31', 'StudentLastName31', 'student31', 'symmetricalSpoon#1', 'student31@cmput401.ca', '8449907' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8449907', 1, '3', '2012 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student32', 'StudentLastName32', 'student32', 'symmetricalSpoon#1', 'student32@cmput401.ca', '9152977' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9152977', 1, '3', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student33', 'StudentLastName33', 'student33', 'symmetricalSpoon#1', 'student33@cmput401.ca', '3392049' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3392049', 1, '3', '2014 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student34', 'StudentLastName34', 'student34', 'symmetricalSpoon#1', 'student34@cmput401.ca', '2101629' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2101629', 0, '4', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student35', 'StudentLastName35', 'student35', 'symmetricalSpoon#1', 'student35@cmput401.ca', '3499531' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3499531', 0, '0', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student36', 'StudentLastName36', 'student36', 'symmetricalSpoon#1', 'student36@cmput401.ca', '8099837' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8099837', 0, '0', '2014 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student37', 'StudentLastName37', 'student37', 'symmetricalSpoon#1', 'student37@cmput401.ca', '6394475' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6394475', 1, '1', '2014 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student38', 'StudentLastName38', 'student38', 'symmetricalSpoon#1', 'student38@cmput401.ca', '3346580' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3346580', 1, '2', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student39', 'StudentLastName39', 'student39', 'symmetricalSpoon#1', 'student39@cmput401.ca', '3161502' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3161502', 3, '2', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student40', 'StudentLastName40', 'student40', 'symmetricalSpoon#1', 'student40@cmput401.ca', '1811716' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1811716', 3, '1', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student41', 'StudentLastName41', 'student41', 'symmetricalSpoon#1', 'student41@cmput401.ca', '5479169' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5479169', 3, '3', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student42', 'StudentLastName42', 'student42', 'symmetricalSpoon#1', 'student42@cmput401.ca', '5870207' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5870207', 2, '3', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student43', 'StudentLastName43', 'student43', 'symmetricalSpoon#1', 'student43@cmput401.ca', '1627287' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1627287', 1, '1', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student44', 'StudentLastName44', 'student44', 'symmetricalSpoon#1', 'student44@cmput401.ca', '9100870' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9100870', 3, '4', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student45', 'StudentLastName45', 'student45', 'symmetricalSpoon#1', 'student45@cmput401.ca', '7491057' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7491057', 0, '4', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student46', 'StudentLastName46', 'student46', 'symmetricalSpoon#1', 'student46@cmput401.ca', '3755000' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3755000', 0, '1', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student47', 'StudentLastName47', 'student47', 'symmetricalSpoon#1', 'student47@cmput401.ca', '6126799' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6126799', 0, '4', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student48', 'StudentLastName48', 'student48', 'symmetricalSpoon#1', 'student48@cmput401.ca', '4010550' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4010550', 1, '1', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student49', 'StudentLastName49', 'student49', 'symmetricalSpoon#1', 'student49@cmput401.ca', '1666731' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1666731', 2, '1', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student50', 'StudentLastName50', 'student50', 'symmetricalSpoon#1', 'student50@cmput401.ca', '4537463' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4537463', 2, '4', '2013 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student51', 'StudentLastName51', 'student51', 'symmetricalSpoon#1', 'student51@cmput401.ca', '7155863' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7155863', 0, '4', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student52', 'StudentLastName52', 'student52', 'symmetricalSpoon#1', 'student52@cmput401.ca', '9158125' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9158125', 1, '2', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student53', 'StudentLastName53', 'student53', 'symmetricalSpoon#1', 'student53@cmput401.ca', '9103267' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9103267', 1, '1', '2016 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student54', 'StudentLastName54', 'student54', 'symmetricalSpoon#1', 'student54@cmput401.ca', '224135' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '224135', 0, '1', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student55', 'StudentLastName55', 'student55', 'symmetricalSpoon#1', 'student55@cmput401.ca', '2754905' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2754905', 0, '0', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student56', 'StudentLastName56', 'student56', 'symmetricalSpoon#1', 'student56@cmput401.ca', '5584796' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5584796', 1, '0', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student57', 'StudentLastName57', 'student57', 'symmetricalSpoon#1', 'student57@cmput401.ca', '6400238' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6400238', 2, '0', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student58', 'StudentLastName58', 'student58', 'symmetricalSpoon#1', 'student58@cmput401.ca', '9001647' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9001647', 2, '1', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student59', 'StudentLastName59', 'student59', 'symmetricalSpoon#1', 'student59@cmput401.ca', '3835330' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3835330', 1, '1', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student60', 'StudentLastName60', 'student60', 'symmetricalSpoon#1', 'student60@cmput401.ca', '4312873' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4312873', 1, '0', '2014 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student61', 'StudentLastName61', 'student61', 'symmetricalSpoon#1', 'student61@cmput401.ca', '1187965' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1187965', 3, '3', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student62', 'StudentLastName62', 'student62', 'symmetricalSpoon#1', 'student62@cmput401.ca', '7545184' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7545184', 0, '4', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student63', 'StudentLastName63', 'student63', 'symmetricalSpoon#1', 'student63@cmput401.ca', '4077846' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4077846', 1, '3', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student64', 'StudentLastName64', 'student64', 'symmetricalSpoon#1', 'student64@cmput401.ca', '3507312' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3507312', 1, '3', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student65', 'StudentLastName65', 'student65', 'symmetricalSpoon#1', 'student65@cmput401.ca', '9860953' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9860953', 1, '3', '2016 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student66', 'StudentLastName66', 'student66', 'symmetricalSpoon#1', 'student66@cmput401.ca', '3306065' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3306065', 0, '3', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student67', 'StudentLastName67', 'student67', 'symmetricalSpoon#1', 'student67@cmput401.ca', '3975345' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3975345', 2, '4', '2012 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student68', 'StudentLastName68', 'student68', 'symmetricalSpoon#1', 'student68@cmput401.ca', '362506' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '362506', 1, '1', '2014 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student69', 'StudentLastName69', 'student69', 'symmetricalSpoon#1', 'student69@cmput401.ca', '8250656' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8250656', 0, '2', '2013 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student70', 'StudentLastName70', 'student70', 'symmetricalSpoon#1', 'student70@cmput401.ca', '6753320' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6753320', 3, '3', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student71', 'StudentLastName71', 'student71', 'symmetricalSpoon#1', 'student71@cmput401.ca', '2904750' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2904750', 2, '1', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student72', 'StudentLastName72', 'student72', 'symmetricalSpoon#1', 'student72@cmput401.ca', '1981611' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1981611', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student73', 'StudentLastName73', 'student73', 'symmetricalSpoon#1', 'student73@cmput401.ca', '8355564' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8355564', 2, '2', '2014 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student74', 'StudentLastName74', 'student74', 'symmetricalSpoon#1', 'student74@cmput401.ca', '4850948' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4850948', 2, '0', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student75', 'StudentLastName75', 'student75', 'symmetricalSpoon#1', 'student75@cmput401.ca', '6891733' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6891733', 3, '1', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student76', 'StudentLastName76', 'student76', 'symmetricalSpoon#1', 'student76@cmput401.ca', '4000605' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4000605', 0, '2', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student77', 'StudentLastName77', 'student77', 'symmetricalSpoon#1', 'student77@cmput401.ca', '9643164' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9643164', 3, '2', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student78', 'StudentLastName78', 'student78', 'symmetricalSpoon#1', 'student78@cmput401.ca', '5192591' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5192591', 1, '0', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student79', 'StudentLastName79', 'student79', 'symmetricalSpoon#1', 'student79@cmput401.ca', '3395545' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3395545', 0, '0', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student80', 'StudentLastName80', 'student80', 'symmetricalSpoon#1', 'student80@cmput401.ca', '3682680' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3682680', 1, '2', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student81', 'StudentLastName81', 'student81', 'symmetricalSpoon#1', 'student81@cmput401.ca', '6952363' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6952363', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student82', 'StudentLastName82', 'student82', 'symmetricalSpoon#1', 'student82@cmput401.ca', '2139721' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2139721', 2, '4', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student83', 'StudentLastName83', 'student83', 'symmetricalSpoon#1', 'student83@cmput401.ca', '9700052' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9700052', 3, '2', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student84', 'StudentLastName84', 'student84', 'symmetricalSpoon#1', 'student84@cmput401.ca', '2203629' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2203629', 0, '4', '2014 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student85', 'StudentLastName85', 'student85', 'symmetricalSpoon#1', 'student85@cmput401.ca', '3799105' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3799105', 0, '2', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student86', 'StudentLastName86', 'student86', 'symmetricalSpoon#1', 'student86@cmput401.ca', '1149089' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1149089', 2, '4', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student87', 'StudentLastName87', 'student87', 'symmetricalSpoon#1', 'student87@cmput401.ca', '3699567' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3699567', 1, '4', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student88', 'StudentLastName88', 'student88', 'symmetricalSpoon#1', 'student88@cmput401.ca', '7384462' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7384462', 1, '1', '2012 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student89', 'StudentLastName89', 'student89', 'symmetricalSpoon#1', 'student89@cmput401.ca', '3061449' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3061449', 3, '3', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student90', 'StudentLastName90', 'student90', 'symmetricalSpoon#1', 'student90@cmput401.ca', '9440358' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9440358', 3, '4', '2012 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student91', 'StudentLastName91', 'student91', 'symmetricalSpoon#1', 'student91@cmput401.ca', '4660696' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4660696', 0, '0', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student92', 'StudentLastName92', 'student92', 'symmetricalSpoon#1', 'student92@cmput401.ca', '6263044' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6263044', 1, '4', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student93', 'StudentLastName93', 'student93', 'symmetricalSpoon#1', 'student93@cmput401.ca', '6390180' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6390180', 3, '4', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student94', 'StudentLastName94', 'student94', 'symmetricalSpoon#1', 'student94@cmput401.ca', '3677455' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3677455', 0, '4', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student95', 'StudentLastName95', 'student95', 'symmetricalSpoon#1', 'student95@cmput401.ca', '2120675' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2120675', 2, '2', '2016 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student96', 'StudentLastName96', 'student96', 'symmetricalSpoon#1', 'student96@cmput401.ca', '2531949' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2531949', 0, '0', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student97', 'StudentLastName97', 'student97', 'symmetricalSpoon#1', 'student97@cmput401.ca', '1340317' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1340317', 2, '1', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student98', 'StudentLastName98', 'student98', 'symmetricalSpoon#1', 'student98@cmput401.ca', '7250933' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7250933', 1, '3', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student99', 'StudentLastName99', 'student99', 'symmetricalSpoon#1', 'student99@cmput401.ca', '3923289' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3923289', 2, '1', '2014 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student100', 'StudentLastName100', 'student100', 'symmetricalSpoon#1', 'student100@cmput401.ca', '9426048' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9426048', 2, '0', '2012 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student101', 'StudentLastName101', 'student101', 'symmetricalSpoon#1', 'student101@cmput401.ca', '889858' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '889858', 3, '0', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student102', 'StudentLastName102', 'student102', 'symmetricalSpoon#1', 'student102@cmput401.ca', '2811784' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2811784', 2, '4', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student103', 'StudentLastName103', 'student103', 'symmetricalSpoon#1', 'student103@cmput401.ca', '5102158' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5102158', 2, '1', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student104', 'StudentLastName104', 'student104', 'symmetricalSpoon#1', 'student104@cmput401.ca', '249749' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '249749', 3, '1', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student105', 'StudentLastName105', 'student105', 'symmetricalSpoon#1', 'student105@cmput401.ca', '733990' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '733990', 2, '0', '2012 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student106', 'StudentLastName106', 'student106', 'symmetricalSpoon#1', 'student106@cmput401.ca', '1320731' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1320731', 1, '4', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student107', 'StudentLastName107', 'student107', 'symmetricalSpoon#1', 'student107@cmput401.ca', '1587294' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1587294', 2, '2', '2014 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student108', 'StudentLastName108', 'student108', 'symmetricalSpoon#1', 'student108@cmput401.ca', '9944622' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9944622', 1, '4', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student109', 'StudentLastName109', 'student109', 'symmetricalSpoon#1', 'student109@cmput401.ca', '433151' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '433151', 3, '4', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 1, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student110', 'StudentLastName110', 'student110', 'symmetricalSpoon#1', 'student110@cmput401.ca', '8626260' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8626260', 0, '0', '2014 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student111', 'StudentLastName111', 'student111', 'symmetricalSpoon#1', 'student111@cmput401.ca', '9280523' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9280523', 2, '1', '2012 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student112', 'StudentLastName112', 'student112', 'symmetricalSpoon#1', 'student112@cmput401.ca', '5136394' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5136394', 3, '3', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student113', 'StudentLastName113', 'student113', 'symmetricalSpoon#1', 'student113@cmput401.ca', '5871519' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5871519', 2, '4', '2016 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student114', 'StudentLastName114', 'student114', 'symmetricalSpoon#1', 'student114@cmput401.ca', '4850867' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4850867', 3, '3', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student115', 'StudentLastName115', 'student115', 'symmetricalSpoon#1', 'student115@cmput401.ca', '7857871' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7857871', 2, '3', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student116', 'StudentLastName116', 'student116', 'symmetricalSpoon#1', 'student116@cmput401.ca', '3619980' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3619980', 3, '4', '2012 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student117', 'StudentLastName117', 'student117', 'symmetricalSpoon#1', 'student117@cmput401.ca', '9501410' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9501410', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student118', 'StudentLastName118', 'student118', 'symmetricalSpoon#1', 'student118@cmput401.ca', '9819215' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9819215', 0, '3', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student119', 'StudentLastName119', 'student119', 'symmetricalSpoon#1', 'student119@cmput401.ca', '682092' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '682092', 1, '3', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student120', 'StudentLastName120', 'student120', 'symmetricalSpoon#1', 'student120@cmput401.ca', '3125714' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3125714', 1, '3', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student121', 'StudentLastName121', 'student121', 'symmetricalSpoon#1', 'student121@cmput401.ca', '4988869' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4988869', 1, '3', '2012 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student122', 'StudentLastName122', 'student122', 'symmetricalSpoon#1', 'student122@cmput401.ca', '8166157' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8166157', 2, '0', '2012 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student123', 'StudentLastName123', 'student123', 'symmetricalSpoon#1', 'student123@cmput401.ca', '1311839' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1311839', 3, '1', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student124', 'StudentLastName124', 'student124', 'symmetricalSpoon#1', 'student124@cmput401.ca', '7233098' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7233098', 3, '3', '2013 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student125', 'StudentLastName125', 'student125', 'symmetricalSpoon#1', 'student125@cmput401.ca', '9645471' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9645471', 0, '4', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student126', 'StudentLastName126', 'student126', 'symmetricalSpoon#1', 'student126@cmput401.ca', '9926556' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9926556', 2, '4', '2014 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student127', 'StudentLastName127', 'student127', 'symmetricalSpoon#1', 'student127@cmput401.ca', '9192211' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9192211', 2, '2', '2013 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student128', 'StudentLastName128', 'student128', 'symmetricalSpoon#1', 'student128@cmput401.ca', '526775' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '526775', 3, '4', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student129', 'StudentLastName129', 'student129', 'symmetricalSpoon#1', 'student129@cmput401.ca', '5820273' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5820273', 2, '2', '2014 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student130', 'StudentLastName130', 'student130', 'symmetricalSpoon#1', 'student130@cmput401.ca', '5445471' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5445471', 1, '1', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student131', 'StudentLastName131', 'student131', 'symmetricalSpoon#1', 'student131@cmput401.ca', '3683682' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3683682', 3, '1', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student132', 'StudentLastName132', 'student132', 'symmetricalSpoon#1', 'student132@cmput401.ca', '6371995' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6371995', 3, '2', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student133', 'StudentLastName133', 'student133', 'symmetricalSpoon#1', 'student133@cmput401.ca', '7272486' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7272486', 1, '2', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student134', 'StudentLastName134', 'student134', 'symmetricalSpoon#1', 'student134@cmput401.ca', '9447395' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9447395', 2, '1', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student135', 'StudentLastName135', 'student135', 'symmetricalSpoon#1', 'student135@cmput401.ca', '1149927' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1149927', 1, '0', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student136', 'StudentLastName136', 'student136', 'symmetricalSpoon#1', 'student136@cmput401.ca', '8878027' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8878027', 1, '1', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student137', 'StudentLastName137', 'student137', 'symmetricalSpoon#1', 'student137@cmput401.ca', '6871478' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6871478', 3, '1', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student138', 'StudentLastName138', 'student138', 'symmetricalSpoon#1', 'student138@cmput401.ca', '3055831' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3055831', 3, '3', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student139', 'StudentLastName139', 'student139', 'symmetricalSpoon#1', 'student139@cmput401.ca', '2463840' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2463840', 0, '0', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student140', 'StudentLastName140', 'student140', 'symmetricalSpoon#1', 'student140@cmput401.ca', '9079430' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9079430', 3, '2', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student141', 'StudentLastName141', 'student141', 'symmetricalSpoon#1', 'student141@cmput401.ca', '3692539' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3692539', 3, '1', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student142', 'StudentLastName142', 'student142', 'symmetricalSpoon#1', 'student142@cmput401.ca', '7791590' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7791590', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student143', 'StudentLastName143', 'student143', 'symmetricalSpoon#1', 'student143@cmput401.ca', '8278685' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8278685', 3, '4', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student144', 'StudentLastName144', 'student144', 'symmetricalSpoon#1', 'student144@cmput401.ca', '2217048' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2217048', 2, '4', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student145', 'StudentLastName145', 'student145', 'symmetricalSpoon#1', 'student145@cmput401.ca', '8518020' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8518020', 0, '3', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student146', 'StudentLastName146', 'student146', 'symmetricalSpoon#1', 'student146@cmput401.ca', '9721664' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9721664', 0, '4', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student147', 'StudentLastName147', 'student147', 'symmetricalSpoon#1', 'student147@cmput401.ca', '8333949' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8333949', 0, '0', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 2, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student148', 'StudentLastName148', 'student148', 'symmetricalSpoon#1', 'student148@cmput401.ca', '3817853' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3817853', 3, '4', '2013 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student149', 'StudentLastName149', 'student149', 'symmetricalSpoon#1', 'student149@cmput401.ca', '4200935' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4200935', 0, '4', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student150', 'StudentLastName150', 'student150', 'symmetricalSpoon#1', 'student150@cmput401.ca', '7810654' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7810654', 3, '0', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student151', 'StudentLastName151', 'student151', 'symmetricalSpoon#1', 'student151@cmput401.ca', '945436' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '945436', 1, '3', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student152', 'StudentLastName152', 'student152', 'symmetricalSpoon#1', 'student152@cmput401.ca', '9341069' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9341069', 1, '4', '2012 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student153', 'StudentLastName153', 'student153', 'symmetricalSpoon#1', 'student153@cmput401.ca', '1248251' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1248251', 0, '4', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 12, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student154', 'StudentLastName154', 'student154', 'symmetricalSpoon#1', 'student154@cmput401.ca', '8960061' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8960061', 2, '0', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student155', 'StudentLastName155', 'student155', 'symmetricalSpoon#1', 'student155@cmput401.ca', '1042043' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1042043', 0, '4', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student156', 'StudentLastName156', 'student156', 'symmetricalSpoon#1', 'student156@cmput401.ca', '7039590' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7039590', 2, '3', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student157', 'StudentLastName157', 'student157', 'symmetricalSpoon#1', 'student157@cmput401.ca', '7027739' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7027739', 2, '2', '2014 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 0, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student158', 'StudentLastName158', 'student158', 'symmetricalSpoon#1', 'student158@cmput401.ca', '2355585' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2355585', 1, '0', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student159', 'StudentLastName159', 'student159', 'symmetricalSpoon#1', 'student159@cmput401.ca', '5632699' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5632699', 1, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student160', 'StudentLastName160', 'student160', 'symmetricalSpoon#1', 'student160@cmput401.ca', '7029494' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7029494', 2, '2', '2014 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student161', 'StudentLastName161', 'student161', 'symmetricalSpoon#1', 'student161@cmput401.ca', '7889557' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7889557', 0, '4', '2013 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student162', 'StudentLastName162', 'student162', 'symmetricalSpoon#1', 'student162@cmput401.ca', '2503188' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2503188', 1, '2', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student163', 'StudentLastName163', 'student163', 'symmetricalSpoon#1', 'student163@cmput401.ca', '1976865' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1976865', 3, '0', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student164', 'StudentLastName164', 'student164', 'symmetricalSpoon#1', 'student164@cmput401.ca', '7213006' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7213006', 0, '2', '2014 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student165', 'StudentLastName165', 'student165', 'symmetricalSpoon#1', 'student165@cmput401.ca', '4480640' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4480640', 1, '3', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student166', 'StudentLastName166', 'student166', 'symmetricalSpoon#1', 'student166@cmput401.ca', '7141916' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7141916', 1, '1', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student167', 'StudentLastName167', 'student167', 'symmetricalSpoon#1', 'student167@cmput401.ca', '8561538' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8561538', 3, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student168', 'StudentLastName168', 'student168', 'symmetricalSpoon#1', 'student168@cmput401.ca', '4717127' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4717127', 0, '0', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student169', 'StudentLastName169', 'student169', 'symmetricalSpoon#1', 'student169@cmput401.ca', '3065395' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3065395', 0, '4', '2012 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student170', 'StudentLastName170', 'student170', 'symmetricalSpoon#1', 'student170@cmput401.ca', '1280638' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1280638', 2, '1', '2012 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student171', 'StudentLastName171', 'student171', 'symmetricalSpoon#1', 'student171@cmput401.ca', '9479238' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9479238', 0, '3', '2016 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student172', 'StudentLastName172', 'student172', 'symmetricalSpoon#1', 'student172@cmput401.ca', '6889440' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6889440', 1, '3', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student173', 'StudentLastName173', 'student173', 'symmetricalSpoon#1', 'student173@cmput401.ca', '5965427' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5965427', 2, '3', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 17, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student174', 'StudentLastName174', 'student174', 'symmetricalSpoon#1', 'student174@cmput401.ca', '3803715' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3803715', 3, '4', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student175', 'StudentLastName175', 'student175', 'symmetricalSpoon#1', 'student175@cmput401.ca', '3903279' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3903279', 3, '2', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 16, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student176', 'StudentLastName176', 'student176', 'symmetricalSpoon#1', 'student176@cmput401.ca', '1175054' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1175054', 2, '0', '2012 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student177', 'StudentLastName177', 'student177', 'symmetricalSpoon#1', 'student177@cmput401.ca', '1358506' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1358506', 3, '0', '2012 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student178', 'StudentLastName178', 'student178', 'symmetricalSpoon#1', 'student178@cmput401.ca', '4067583' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4067583', 0, '3', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student179', 'StudentLastName179', 'student179', 'symmetricalSpoon#1', 'student179@cmput401.ca', '9100260' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9100260', 1, '0', '2012 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student180', 'StudentLastName180', 'student180', 'symmetricalSpoon#1', 'student180@cmput401.ca', '502272' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '502272', 1, '0', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 10, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student181', 'StudentLastName181', 'student181', 'symmetricalSpoon#1', 'student181@cmput401.ca', '6544950' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6544950', 1, '1', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student182', 'StudentLastName182', 'student182', 'symmetricalSpoon#1', 'student182@cmput401.ca', '5089206' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5089206', 1, '0', '2013 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student183', 'StudentLastName183', 'student183', 'symmetricalSpoon#1', 'student183@cmput401.ca', '4586716' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '4586716', 3, '4', '2015 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student184', 'StudentLastName184', 'student184', 'symmetricalSpoon#1', 'student184@cmput401.ca', '5838959' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5838959', 0, '3', '2012 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 13, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student185', 'StudentLastName185', 'student185', 'symmetricalSpoon#1', 'student185@cmput401.ca', '8945507' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8945507', 1, '2', '2015 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 15, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student186', 'StudentLastName186', 'student186', 'symmetricalSpoon#1', 'student186@cmput401.ca', '7227998' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '7227998', 1, '2', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 19, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student187', 'StudentLastName187', 'student187', 'symmetricalSpoon#1', 'student187@cmput401.ca', '2402242' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2402242', 0, '2', '2015 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 8, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student188', 'StudentLastName188', 'student188', 'symmetricalSpoon#1', 'student188@cmput401.ca', '8337129' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8337129', 0, '4', '2013 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 6, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student189', 'StudentLastName189', 'student189', 'symmetricalSpoon#1', 'student189@cmput401.ca', '5066860' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '5066860', 3, '3', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 20, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 5, 4, 1 ),  ( (select @foreignkey), 5, 4, 2 ),  ( (select @foreignkey), 5, 4, 3 ),  ( (select @foreignkey), 5, 4, 4 ),  ( (select @foreignkey), 5, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student190', 'StudentLastName190', 'student190', 'symmetricalSpoon#1', 'student190@cmput401.ca', '1563872' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '1563872', 0, '1', '2012 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 18, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 4, 4, 1 ),  ( (select @foreignkey), 4, 4, 2 ),  ( (select @foreignkey), 4, 4, 3 ),  ( (select @foreignkey), 4, 4, 4 ),  ( (select @foreignkey), 4, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student191', 'StudentLastName191', 'student191', 'symmetricalSpoon#1', 'student191@cmput401.ca', '8779438' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '8779438', 0, '1', '2013 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 4, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student192', 'StudentLastName192', 'student192', 'symmetricalSpoon#1', 'student192@cmput401.ca', '969237' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '969237', 3, '1', '2016 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student193', 'StudentLastName193', 'student193', 'symmetricalSpoon#1', 'student193@cmput401.ca', '9983197' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '9983197', 2, '0', '2016 SUMMER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 5, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student194', 'StudentLastName194', 'student194', 'symmetricalSpoon#1', 'student194@cmput401.ca', '267154' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '267154', 0, '4', '2012 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student195', 'StudentLastName195', 'student195', 'symmetricalSpoon#1', 'student195@cmput401.ca', '6980086' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6980086', 3, '4', '2014 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 7, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 1, 4, 1 ),  ( (select @foreignkey), 1, 4, 2 ),  ( (select @foreignkey), 1, 4, 3 ),  ( (select @foreignkey), 1, 4, 4 ),  ( (select @foreignkey), 1, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student196', 'StudentLastName196', 'student196', 'symmetricalSpoon#1', 'student196@cmput401.ca', '3181410' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '3181410', 2, '4', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 3, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 0, 4, 1 ),  ( (select @foreignkey), 0, 4, 2 ),  ( (select @foreignkey), 0, 4, 3 ),  ( (select @foreignkey), 0, 4, 4 ),  ( (select @foreignkey), 0, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student197', 'StudentLastName197', 'student197', 'symmetricalSpoon#1', 'student197@cmput401.ca', '6640450' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6640450', 0, '3', '2016 WINTER', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 14, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 3, 4, 1 ),  ( (select @foreignkey), 3, 4, 2 ),  ( (select @foreignkey), 3, 4, 3 ),  ( (select @foreignkey), 3, 4, 4 ),  ( (select @foreignkey), 3, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student198', 'StudentLastName198', 'student198', 'symmetricalSpoon#1', 'student198@cmput401.ca', '2845290' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '2845290', 0, '2', '2016 FALL', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 9, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



insert into mdl_user (firstname, lastname, username, password, email, idnumber)  values ( 'Student199', 'StudentLastName199', 'student199', 'symmetricalSpoon#1', 'student199@cmput401.ca', '6741546' );

insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages)  values ( '6741546', 1, '1', '2015 SPRING', 5 );

SET @foreignkey=(select last_insert_id());
insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max) values ( (select @foreignkey), 11, 20 );

insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num) values ( (select @foreignkey), 2, 4, 1 ),  ( (select @foreignkey), 2, 4, 2 ),  ( (select @foreignkey), 2, 4, 3 ),  ( (select @foreignkey), 2, 4, 4 ),  ( (select @foreignkey), 2, 4, 5 );



