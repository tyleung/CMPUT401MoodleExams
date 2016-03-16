var data;
var aside;
// id is the unique key in the DB, thus not included here.
var toCheck = new Array("firstname", "middlename", "alternatename", "lastname", "email", "idnumber", "username");
	
function init(dat) {
	aside = document.getElementById("aside");
	//aside.innerHTML = JSON.stringify(data);
	aside.innerHTML = "No search performed yet.";
	data = dat;
}

function getSearch() {
	var a = document.getElementById("inputid").value;
	return a.toLowerCase();
}

function newSearch() {
	var found = new Array();
	var find = getSearch();
	
	for(i=0;i<data.length;i++) {
		for(k=0;k<toCheck.length;k++) {
			if(JSON.stringify(data[i][toCheck[k]]).toLowerCase().includes(getSearch())) {
				found.push(data[i]);
				break;
			}
		}
		
		// if already found go to next data.
		if(found.lastIndexOf(data[i]) != -1) {
			continue;
		}
		
		// Special case, first name AND last name
		var strFirstName = JSON.stringify(data[i][toCheck[0]]).toLowerCase();
		var strLastName = JSON.stringify(data[i][toCheck[3]]).toLowerCase();
		var fullName = strFirstName + " " + strLastName;
		// Removes the "s from the string. 
		fullName = fullName.replace(/\"/g, "");
		if(fullName.includes(getSearch())) {
			found.push(data[i]);
		}
	}
	aside.innerHTML = buildTables(found);
}

function buildTables(data) {
	var tmp = "<table id='students'  border='1' cellpadding='2'>";
	tmp += "<tr><td>ID-Number</td><td>First Name</td><td>Last Name</td><td>Email Address</td></tr>";
	for(i=0;i<data.length;i++) {
	//	id-number, first name, last name, email
		tmp += "<tr><td>"+ JSON.stringify(data[i][toCheck[5]]) +"</td><td>"+ JSON.stringify(data[i][toCheck[0]]) +"</td><td>"+ JSON.stringify(data[i][toCheck[3]]) +"</td><td>"+ JSON.stringify(data[i][toCheck[4]]) +"</td></tr>";
		
	}	
	tmp += "</table>";
	return tmp;
}

