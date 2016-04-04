// Drawing Code reference http://www.williammalone.com/articles/create-html5-canvas-javascript-drawing-app/#demo-simple
// Canvas reference (note especially toDataURL)  http://www.w3schools.com/tags/ref_canvas.asp
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
	var loadgif = "";

	var init = function () {
		canvas = document.getElementById("id_canvas");
		ctx = canvas.getContext("2d");

		loadgif = "<img src='sunload.gif'/>";

		// add event listeners
		canvas.addEventListener("mousedown", mDown);
		canvas.addEventListener("mouseup", mUp);
		canvas.addEventListener("mousemove", mMove);
		canvas.addEventListener("mouseleave", mUp);

		// Marktools
		var drawbtn = document.getElementById("tool_draw");
		// drawbtn.addEventListener("mousedown", drawing);

		var checkbtn = document.getElementById("tool_check");
		checkbtn.addEventListener("mousedown", checkTool);


		// Page control event listeners
		var upbtn = document.getElementById("id_btnUp");
		upbtn.addEventListener("mousedown", naviPdf);
		upbtn.hdir = 0; upbtn.vdir = -1; upbtn.navi = true;

		var downbtn = document.getElementById("id_btnDown");
		downbtn.addEventListener("mousedown", naviPdf);
		downbtn.hdir = 0; downbtn.vdir = 1; downbtn.navi = true;

		var leftbtn = document.getElementById("id_btnLeft");
		leftbtn.addEventListener("mousedown", naviPdf);
		leftbtn.hdir = -1; leftbtn.vdir = 0; leftbtn.navi = true;

		var rightbtn = document.getElementById("id_btnRight");
		rightbtn.addEventListener("mousedown", naviPdf);
		rightbtn.hdir = 1; rightbtn.vdir = 0; rightbtn.navi = true;

		var savbtn = document.getElementById("id_btnSav");
		savbtn.addEventListener("mousedown", naviPdf);
		savbtn.navi = false;
		setTimeout(function() {
			setCanvasToImageDimensions();
			redraw();
		}, 300);
	},
	loadImgToCanvas = function() {
    	var img=document.getElementById("id_img_tmp");
	    ctx.drawImage(img,0,0);
	},
	setCanvasToImageDimensions = function() {
	   	var img=document.getElementById("id_img_tmp");
    	var imgWidth = img.naturalWidth ;
    	var imgHeight = img.naturalHeight;
		canvas.setAttribute("width", imgWidth);
    	canvas.setAttribute("height", imgHeight);
	},
	resetCanvasDrawings = function() {
		clickX = new Array();
		clickY = new Array();
		clickDrag = new Array();
	},
	naviPdf = function (e) {
		var horDir = e.target.hdir;
		var verDir = e.target.vdir;
		var navi = e.target.navi;
		
		var book = parseInt(document.getElementById("id_bookIdTxt").value);
		book = ((book<1) ? 1 : book);
		var page = parseInt(document.getElementById("id_pageTxt").value);
		page = ((page<1) ? 1 : page);
		var mark = parseInt(document.getElementById("id_pageMark").value);
		mark = ((mark<0) ? 0 : mark);
		mark = ((mark>999) ? 999 : mark);
		var maxMark = parseInt(document.getElementById("id_pageMaxMark").value);
		maxMark = ((maxMark<0) ? 0 : maxMark);
		maxMark = ((maxMark>999) ? 999 : maxMark);

		var dat = "imgsavdat=" + canvas.toDataURL('image/png');
		// prevent base64 corruption by replaceing + sign with it's encoding %2B 
		// taken from http://stackoverflow.com/a/14803292
		dat = dat.replace(/\+/gi, "%2B");
		dat = dat + "&page=" + page + "&booklet=" + book + "&mark=" + mark + "&max_mark=" + maxMark;
		//DISABLE autosave as it can auto save a corrupted/not-properly-loaded image!
		if(!navi){
			// taken from http://stackoverflow.com/questions/17391538/plain-javascript-no-jquery-to-load-a-php-file-into-a-div
			var innersavphp = document.getElementById("id_lastSavPDFdiv");
			innersavphp.innerHTML = "Saving " + loadgif;
			if(XMLHttpRequest) var xsav = new XMLHttpRequest();
			else var xsav = new ActiveXObject("Microsoft.XMLHTTP");
			xsav.open("POST", "adrawsav.php", true);
			xsav.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xsav.send(dat);
			xsav.onreadystatechange = function(){
				if(xsav.readyState == 4){
					if(xsav.status == 200) innersavphp.innerHTML = xsav.responseText;
					else innersavphp.innerHTML = "Error saving.";
				}
			};
		}
		
		if(navi) {
			var newbook = parseInt(document.getElementById("id_bookIdTxt").value) + verDir;
			newbook = ((newbook<1) ? 1 : newbook);
			var newpage = parseInt(document.getElementById("id_pageTxt").value) + horDir;
			newpage = ((newpage<1) ? 1 : newpage);
			
			var dirdat = "page=" + newpage + "&booklet=" + newbook;
			
			// taken from http://stackoverflow.com/questions/17391538/plain-javascript-no-jquery-to-load-a-php-file-into-a-div
			var innernaviphp = document.getElementById("id_pageinfo");
			innernaviphp.innerHTML = "Loading page " + loadgif;
			canvas.setAttribute("width", 1);
	    	canvas.setAttribute("height", 1);
			if(XMLHttpRequest) var xnavi = new XMLHttpRequest();
			else var xnavi = new ActiveXObject("Microsoft.XMLHTTP");
			xnavi.open("POST", "adraw_retrieve.php", true);
			xnavi.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xnavi.send(dirdat);
			xnavi.onreadystatechange = function(){
				if(xnavi.readyState == 4){
					if(xnavi.status == 200) {
						innernaviphp.innerHTML = xnavi.responseText;
						var innerjs = document.getElementById("id_retrieve_scr");
						// innerHTML doesn't run script, use JS' eval function.
						eval(innerjs.innerHTML);
						setTimeout(function() {
							resetCanvasDrawings();
							setCanvasToImageDimensions();
							redraw();
						}, 300);
						
					} else {
						innernaviphp.innerHTML = "Failed fetching page.";
					}
				}
			};
		}
		
    },

	checkTool = function (event){
		var rect = canvas.getBoundingClientRect();
		var x = event.clientX-rect.left;
		var y = event.clientY-rect.top;
		addClick(x,y);

		var check_img = document.getElementById("checkmarkimg");
		ctx.drawImage(check_img, 90, 130, 50, 60, 10, 10, 50, 60);

	},

    mDown = function(event) {
	    var rect = canvas.getBoundingClientRect();
    	var x = event.clientX-rect.left;
    	var y = event.clientY-rect.top;
        paint = true;
		addClick(x, y);
		redraw();
    },
    /** Test comment */
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
	  loadImgToCanvas();
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

function test2(){
	alert();
}

