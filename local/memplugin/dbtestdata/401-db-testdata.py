"""
-- foreign key insert resources used http://dba.stackexchange.com/questions/46410/how-do-i-insert-a-row-which-contains-a-foreign-key
-- http://dev.mysql.com/doc/refman/5.7/en/information-functions.html#function_last-insert-id
-- http://www.rndblog.com/insert-into-multiple-mysql-tables-linked-by-a-foreign-key/


-- in terminal mysql -u root --password=symmetricalSpoon moodledb

--  mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql

-- use moodledb;--To use the moodledb database.

-- show tables;--To show all tables.
-- Moodle stores them like this:
--  mdl_mem_booklet_data
--  mdl_mem_mark_stats
--  mdl_mem_pages
--  mdl_mem_pdf_files
--
-- describe mdl_mem_booklet_data;
--  +----------------------+-------------+------+-----+---------+----------------+
--  | Field                | Type        | Null | Key | Default | Extra          |
--  +----------------------+-------------+------+-----+---------+----------------+
--  | booklet_id           | bigint(10)  | NO   | PRI | NULL    | auto_increment |
--  | student_id           | int(9)      | NO   |     | NULL    |                |
--  | prof_id              | int(9)      | YES  |     | NULL    |                |
--  | date_finalized       | bigint(10)  | YES  |     | NULL    |                |
--  | course_id            | varchar(10) | YES  |     | NULL    |                |
--  | year_semester_origin | varchar(11) | NO   |     |         |                |
--  | max_pages            | smallint(3) | NO   |     |NULL     |                |
--  +----------------------+-------------+------+-----+---------+----------------+
-- describe mdl_mem_pdf_files;
--  +-------------+------------+------+-----+---------+----------------+
--  | Field       | Type       | Null | Key | Default | Extra          |
--  +-------------+------------+------+-----+---------+----------------+
--  | pdf_file_id | bigint(10) | NO   | PRI | NULL    | auto_increment |
--  | booklet_id  | bigint(10) | NO   | UNI | NULL    |                |
--  | pdf_file    | longblob   | NO   |     | NULL    |                |
--  +-------------+------------+------+-----+---------+----------------+
-- describe mdl_mem_pages;
--  +----------------+-------------+------+-----+---------+----------------+
--  | Field          | Type        | Null | Key | Default | Extra          |
--  +----------------+-------------+------+-----+---------+----------------+
--  | page_id        | bigint(10)  | NO   | PRI | NULL    | auto_increment |
--  | booklet_id     | bigint(10)  | NO   | MUL | NULL    |                |
--  | page_marks     | smallint(3) | NO   |     | NULL    |                |
--  | page_marks_max | smallint(3) | NO   |     | NULL    |                |
--  | page_num       | smallint(3) | NO   |     | NULL    |                |
--  +----------------+-------------+------+-----+---------+----------------+
-- describe mdl_mem_mark_stats;
--  +-------------------------+-------------+------+-----+---------+----------------+
--  | Field                   | Type        | Null | Key | Default | Extra          |
--  +-------------------------+-------------+------+-----+---------+----------------+
--  | booklet_id              | bigint(10)  | NO   | UNI | NULL    |                |
--  | total_booklet_score     | smallint(3) | NO   |     | NULL    |                |
--  | total_booklet_score_max | smallint(3) | NO   |     | NULL    |                |
--  | mark_stats_id           | bigint(10)  | NO   | PRI | NULL    | auto_increment |
--  +-------------------------+-------------+------+-----+---------+----------------+
"""

import random

class User:
	"""Defines a user with (firstname, lastname, username, password, email, idnumber) values.
	
	All generated test users will have the following values:
	firstname: "Student<#>"
	lastname: "StudentLastName<#>"
	username: "student<#>"
	password: "symmetricalSpoon#1"
	email: "student<#>@cmput401.ca"
	idnumber: random generated number that will be the same as the student_id
		field in mdl_mem_booklet_data
	"""
	def __init__(self, student_num):
		self.firstname = self.get_firstname(student_num)
		self.lastname = self.get_lastname(student_num)
		self.username = self.get_username(self.firstname)
		self.password = self.get_password()
		self.email = self.get_email(self.firstname)
		
	def get_firstname(self, student_num):
		return "Student" + str(student_num)
		
	def get_lastname(self, student_num):
		return "StudentLastName" + str(student_num)
		
	def get_username(self, first):
		return first.lower()
		
	def get_password(self):
		return "symmetricalSpoon#1"
		
	def get_email(self, first):
		return first.lower() + "@cmput401.ca"
		

def main():
	userInsert = "insert into mdl_user (firstname, lastname, username, password, email, idnumber) "
	bookletInsert = "insert into mdl_mem_booklet_data (student_id, prof_id, course_id, year_semester_origin, max_pages) "

	sqlVarSet = "SET @foreignkey=(select last_insert_id());"
	sqlVar = "(select @foreignkey)"

	markStatsInsert = "insert into mdl_mem_mark_stats (booklet_id, total_booklet_score, total_booklet_score_max)"

	pagesInsert = "insert into mdl_mem_pages (booklet_id, page_marks, page_marks_max, page_num)"#, qr_code)"

	yearList = ["2016","2015","2015","2014","2013","2012"]
	semList = ["FALL","WINTER", "SPRING", "SUMMER"]

	#---------can simple edit if you want:
	maxMarks = 20; # maximum marks booklet can get.
	pages = 5; # how many pages booklet has.
	num_inserts = 50
	#--------end simple edits

	userid = random.sample(range(99999,9999999), num_inserts)
	courseid = "2" # This corresponds to the first course you create.
	out = "-- To RUN: in terminal type mysql -u root --password=symmetricalSpoon moodledb < 401_memplugin_test_data.sql\n"

	for each in range(num_inserts):
		user = User(each)
		mark = random.randint(0,maxMarks)

		out += userInsert + \
			" values ( '"+ user.firstname + "', '" + user.lastname + "', '" + \
			user.username + "', '" + user.password + "', '" + \
			user.email + "', '" + str(userid[each]) + "' );\n\n"
		
		out += bookletInsert + \
			" values ( '"+ str(userid[each]) +"', "+ \
			str(random.randint(0,3)) +", '" + courseid + "', '"+ \
			yearList[0] +" "+ semList[0] +"', "+ str(pages) +" );\n\n"
			#yearList[random.randint(0,5)] +" "+ semList[random.randint(0,3)] +"', "+ str(pages) +" );\n\n"
			#To limit data generated to a specific year and semester edit here above^.

		out += sqlVarSet + "\n"
		out += markStatsInsert + \
		" values ( "+ sqlVar +", "+ \
			str(mark) +", "+ \
			str(maxMarks) +" );\n\n"
		
		out += pagesInsert + " values"
			
		pageMarksCount = int(maxMarks/pages)
		for pg in range(pageMarksCount+1):
			pgMark = int(mark/pageMarksCount);
			
			out += " ( "+ sqlVar +", "+ \
				str(pgMark) +", "+ \
				str(pageMarksCount) +", "+ \
				str(pg+1)
				
			if(pg == pageMarksCount):
				out += " );\n"
			else:
				out += " ), "
		out += "\n\n\n"
			
	print("Making mock data MoodleDB MEM_PLUGIN");

	with open("401_memplugin_test_data.sql", "wt") as outFile:
		outFile.write(out)
		

if __name__=="__main__":
	main()