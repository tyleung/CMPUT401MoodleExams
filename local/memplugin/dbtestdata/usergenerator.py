"""
This script will generate a csv file with sample user data.
It will allow you to use $DB functions to get student user records.

Upload the csv file to:
Site administration > Users > Accounts > Upload users

"""


# Add to this list if you want more users.
users = [
"John Smith",
"Terence Leung",
"Ryan Satyabrata",
"Lixin Jin",
"Elyse Hill",
"Jaeyoon Kim",
"Peter Lee",
"Jonathan Edwards",
"Marilyn Johnson",
"Haley Martinez",
"John Mfume",
"David Letty",
"Barack Obama"
]



fields = "username,password,firstname,lastname,email,idnumber\n"

ID_NUM = 10000 # id numbers start at 10000

class User:
	def __init__(self, fullname):
		self.firstname = fullname.split()[0]
		self.lastname = fullname.split()[1]
		self.username = self.get_username(self.firstname, self.lastname)
		self.password = self.get_password(self.firstname, self.lastname)
		self.email = self.get_email(self.firstname, self.lastname)
		
		global ID_NUM
		self.idnumber = str(ID_NUM)
		ID_NUM += 1
		
	def get_username(self, first, last):
		return first[0].lower() + last.lower()
		
	def get_password(self, first, last):
		return first + last + "#1"
		
	def get_email(self, first, last):
		return first[0].lower() + last.lower() + "@cmput401.ca"
	
	def get_string(self):
		ret = ""
		ret += self.username + ","
		ret += self.password + ","
		ret += self.firstname + ","
		ret += self.lastname + ","
		ret += self.email + ","
		ret += self.idnumber
		return ret
		

with open("users.csv","w") as users_file:
	users_file.write(fields)
	for name in users:
		user = User(name)
		users_file.write(user.get_string())
		users_file.write("\n")