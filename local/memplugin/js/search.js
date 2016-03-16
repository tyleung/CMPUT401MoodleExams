var data;
var aside;
// id is the unique key in the DB, thus not included here? or use idnumber? not sure which one to use.
var toCheck = new Array("firstname", "middlename", "alternatename", "lastname", "email", "id", "username");
	
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
		fullName = cleanText(fullName);
		if(fullName.includes(getSearch())) {
			found.push(data[i]);
		}
	}
	aside.innerHTML = buildTables(found);
}

function buildTables(data) {
	var tmp = "<table id='students'  border='0' cellpadding='2' >";
	tmp += "<tr><td>ID-Number</td><td>First Name</td><td>Last Name</td><td>Email Address</td></tr>";
	for(i=0;i<data.length;i++) {
		//	id-number, first name, last name, email
		var id = cleanText(JSON.stringify(data[i][toCheck[5]]));
		var first = cleanText(JSON.stringify(data[i][toCheck[0]]));
		var last = cleanText(JSON.stringify(data[i][toCheck[3]]));
		var email = cleanText(JSON.stringify(data[i][toCheck[4]]));
		var btn = "<a href='search_add_to_db.php?sid="+id+"'>Add</a>";
		tmp += "<tr><td>"+ id +"</td><td>"+ first +"</td><td>"+ last +"</td><td>"+ email +"</td><td>"+ btn +"</td></tr>";		
	}	
	tmp += "</table>";
	return tmp;
}

function cleanText(txt) {
	return txt.replace(/\"/g, "");
}

