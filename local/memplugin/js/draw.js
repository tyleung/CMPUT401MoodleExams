// Drawing Code reference http://www.williammalone.com/articles/create-html5-canvas-javascript-drawing-app/#demo-simple
// Canvas reference (note especially toDataURL())  http://www.w3schools.com/tags/ref_canvas.asp
// http://stackoverflow.com/questions/12026345/live-type-in-html5-canvas
// http://www.tcpdf.org/examples/example_009.phps


var draw_class = (function () {

	//TODO: make it more efficient, instead redrawing canvas every event, 
	// just draw new stuff and redraw only when neede.
	

	
	var canvas = document.getElementById("id_canvas");
	var ctx = "";
	var clickX = new Array();
	var clickY = new Array();
	var clickDrag = new Array();
	var paint = false;
	
	var init = function () {
		canvas = document.getElementById("id_canvas");
		ctx = canvas.getContext("2d");

		// add event listeners
		canvas.addEventListener("mousedown", mDown);
		canvas.addEventListener("mouseup", mUp);
		canvas.addEventListener("mousemove", mMove);
		canvas.addEventListener("mouseleave", mUp);
		
		// Page control event listeners
		var upbtn = document.getElementById("id_btnUp");
		upbtn.addEventListener("mousedown", naviPdf);
		upbtn.hdir = 0; upbtn.vdir = -1;
		
		var downbtn = document.getElementById("id_btnDown");
		downbtn.addEventListener("mousedown", naviPdf);
		downbtn.hdir = 0; downbtn.vdir = 1;
		
		var leftbtn = document.getElementById("id_btnLeft");
		leftbtn.addEventListener("mousedown", naviPdf);
		leftbtn.hdir = -1; leftbtn.vdir = 0;
		
		var rightbtn = document.getElementById("id_btnRight");
		rightbtn.addEventListener("mousedown", naviPdf);
		rightbtn.hdir = 1; rightbtn.vdir = 0;
		
		var savbtn = document.getElementById("id_btnSav");
		savbtn.addEventListener("mousedown", savePdf);
	},	
	naviPdf = function (e) {
		var horDir = e.target.hdir;
		var verDir = e.target.vdir;
		
		var book = parseInt(document.getElementById("id_bookIdTxt").value) + verDir;
		book = ((book<0) ? 0 : book);
		var page = parseInt(document.getElementById("id_pageTxt").value) + horDir;
		page = ((page<0) ? 0 : page);
		var mark = document.getElementById("id_pageMark").value;
		mark = ((mark<0) ? 0 : mark);
		mark = ((mark>999) ? 999 : mark);
		var maxMark = document.getElementById("id_pageMaxMark").value;
		maxMark = ((maxMark<0) ? 0 : maxMark);
		maxMark = ((maxMark>999) ? 999 : maxMark);
					
		var dirdat = "page=" + page + "&booklet=" + book + "&mark=" + mark + "&max_mark=" + maxMark;
		
		// taken from http://stackoverflow.com/questions/17391538/plain-javascript-no-jquery-to-load-a-php-file-into-a-div
		var innerphp = document.getElementById("id_pageinfo");
		innerphp.innerHTML="Loading page...";
		if(XMLHttpRequest) var x = new XMLHttpRequest();
		else var x = new ActiveXObject("Microsoft.XMLHTTP");
		x.open("POST", "adraw_retrieve.php", true);
		x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		x.send(dirdat);
		x.onreadystatechange = function(){
			if(x.readyState == 4){
				if(x.status == 200) innerphp.innerHTML = x.responseText;
				else innerphp.innerHTML = "Failed fetching page.";
			}
		}
    },
	savePdf = function () {
		var dat = "imgsavdat=" + canvas.toDataURL('image/png');
		// prevent base64 corruption by replaceing + sign with it's encoding %2B 
		// taken from http://stackoverflow.com/a/14803292
		dat = dat.replace(/\+/gi, "%2B");
		
		// taken from http://stackoverflow.com/questions/17391538/plain-javascript-no-jquery-to-load-a-php-file-into-a-div
		var innerphp = document.getElementById("id_lastSavPDFdiv");
		innerphp.innerHTML="Saving...";
		if(XMLHttpRequest) var x = new XMLHttpRequest();
		else var x = new ActiveXObject("Microsoft.XMLHTTP");
		x.open("POST", "adrawsav.php", true);
		x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		x.send(dat);
		x.onreadystatechange = function(){
			if(x.readyState == 4){
				if(x.status == 200) innerphp.innerHTML = x.responseText;
				else innerphp.innerHTML = "Error saving.";
			}
		}
    },
    mDown = function(event) {
	    var rect = canvas.getBoundingClientRect();
    	var x = event.clientX-rect.left;
    	var y = event.clientY-rect.top;
    	console.log("BBB x"+x+" y"+y+" canvasL"+canvas.offsetLeft+" canvasR"+canvas.offsetTop);
        paint = true;
		addClick(x, y);
		redraw();
    },
    mUp = function(event) {
	    paint = false;
    },
    mMove = function(event) {
	    if(paint){
			var rect = canvas.getBoundingClientRect();
			var x = event.clientX-rect.left;
			var y = event.clientY-rect.top;
			addClick(x, y, true);
			redraw();
		}
    },
    addClick = function(x, y, dragging) {
	  clickX.push(x);
	  clickY.push(y);
	  clickDrag.push(dragging);
	},
	redraw = function(){
	  ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height); // Clears the canvas
	  
	  ctx.strokeStyle = "#df4b26";
	  ctx.lineJoin = "round";
	  ctx.lineWidth = 5;
			
	  for(var i=0; i < clickX.length; i++) {		
		ctx.beginPath();
		if(clickDrag[i] && i){
		  ctx.moveTo(clickX[i-1], clickY[i-1]);
		 }else{
		   ctx.moveTo(clickX[i], clickY[i]);
		 }
		 ctx.lineTo(clickX[i], clickY[i]);
		 ctx.closePath();
		 ctx.stroke();
	  }
	};
    
	return {init: init};
}());

