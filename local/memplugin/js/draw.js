// Drawing Code reference http://www.williammalone.com/articles/create-html5-canvas-javascript-drawing-app/#demo-simple
// Canvas reference (note especially toDataURL)  http://www.w3schools.com/tags/ref_canvas.asp
// http://stackoverflow.com/questions/12026345/live-type-in-html5-canvas
// http://www.tcpdf.org/examples/example_009.phps
// http://www.w3schools.com/tags/canvas_filltext.asp

function checkMax() {
	var mark = parseInt(document.getElementById("id_pageMark").value);
	var maxMark = parseInt(document.getElementById("id_pageMaxMark").value);
	if(mark > maxMark)
		alert("Warning: you're assigning a mark higher than the maximum mark.");
}

var draw_class = (function () {

	//TODO: make it more efficient, instead redrawing canvas every event, 
	// just draw new stuff and redraw only when neede.
		
	var canvas = document.getElementById("id_canvas");
	var ctx = "";
	var clickX = new Array();
	var clickY = new Array();
	var clickDrag = new Array();
	var clickX_erase = new Array();
	var clickY_erase = new Array();
	var clickDrag_erase = new Array();
	var paint = false;
	var loadgif = "";
	var draw_tool_activate = true;
	var check_tool_activate = false;
	var cross_tool_activate = false;
	var erase_tool_activate = false;
	var type_tool_activate = false;
	var validBks = "";
	var currentBk = 0;
	var maxPg = 0;

	var init = function (bks, startBook, maxPages) {
		canvas = document.getElementById("id_canvas");
		ctx = canvas.getContext("2d");

		loadgif = "<img src='sunload.gif'/>";
		
		validBks = bks;
		currentBk = parseInt(startBook);
		maxPg = parseInt(maxPages);

		// add event listeners
		canvas.addEventListener("mousedown", mDown);
		canvas.addEventListener("mouseup", mUp);
		canvas.addEventListener("mousemove", mMove);
		canvas.addEventListener("mouseleave", mUp);

		// Marktools
		var drawbtn = document.getElementById("tool_draw");
		drawbtn.addEventListener("mousedown", drawingTool);
		var checkbtn = document.getElementById("tool_check");
		checkbtn.addEventListener("mousedown", checkTool);
		var crossbtn = document.getElementById("tool_cross");
		crossbtn.addEventListener("mousedown", crossTool);
		var erasebtn = document.getElementById("tool_erase");
		erasebtn.addEventListener("mousedown", eraseTool);
		var typebtn = document.getElementById("tool_type");
		typebtn.addEventListener("mousedown", typeTool);


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
			loadImgToCanvas();
			// redraw();
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

		clickX_erase = new Array();
		clickY_erase = new Array();
		clickDrag_erase = new Array();
	},
	naviPdf = function (e) {
		var horDir = e.target.hdir;
		var verDir = e.target.vdir;
		var navi = e.target.navi;
		
		var book = parseInt(document.getElementById("id_bookIdTxt").value);
		book = ((book<1) ? 1 : book);
		var page = parseInt(document.getElementById("id_pageTxt").value);
		page = ((page<1) ? 1 : page);
		page = ((page>maxPg) ? maxPg : page);
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
		
		// get course id
		var course_id = parseInt(document.getElementById("id_course_id").value);

		dat = dat + "&page=" + page + "&booklet=" + validBks[currentBk] + "&mark=" + mark + "&max_mark=" + maxMark + "&course_id=" + course_id;

		//DISABLE autosave as it can auto save a corrupted/not-properly-loaded image!
		if(!navi){
			// taken from http://stackoverflow.com/questions/17391538/plain-javascript-no-jquery-to-load-a-php-file-into-a-div
			var innersavphp = document.getElementById("id_lastSavPDFdiv");
			innersavphp.innerHTML = "Saving " + loadgif;
			disableNaviBtn(true);
			if(XMLHttpRequest) var xsav = new XMLHttpRequest();
			else var xsav = new ActiveXObject("Microsoft.XMLHTTP");
			xsav.open("POST", "adrawsav.php", true);
			xsav.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xsav.send(dat);
			xsav.onreadystatechange = function(){
				if(xsav.readyState == 4){
					if(xsav.status == 200) {
						innersavphp.innerHTML = xsav.responseText;
						setTimeout(function(){ disableNaviBtn(false) }, 200);
					} else {
						innersavphp.innerHTML = "Error saving.";
						disableNaviBtn(false);
					}
				}
			};
		}
		
		if(navi) {
			currentBk = currentBk + verDir;
			currentBk = ((currentBk<0) ? 0 : currentBk);
			currentBk = ((currentBk>=validBks.length) ? validBks.length-1 : currentBk);
			var newpage = parseInt(document.getElementById("id_pageTxt").value) + horDir;
			newpage = ((newpage<1) ? 1 : newpage);

			var dirdat = "page=" + newpage + "&booklet=" + validBks[currentBk] + "&course_id=" + course_id;
			
			// taken from http://stackoverflow.com/questions/17391538/plain-javascript-no-jquery-to-load-a-php-file-into-a-div
			var innernaviphp = document.getElementById("id_pageinfo");
			innernaviphp.innerHTML = "Loading page " + loadgif;
			document.getElementById("id_btnSav").disabled = true;
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
						
						setTimeout(function(){
							resetCanvasDrawings();
							setCanvasToImageDimensions();
							loadImgToCanvas();
							setTimeout(function(){ document.getElementById("id_btnSav").disabled = false }, 200);
						}, 200);
					} else {
						innernaviphp.innerHTML = "Failed fetching page.";
						document.getElementById("id_btnSav").disabled = false;
					}
				}
			};
		}
		
    },
	disableNaviBtn = function(bool) {
		document.getElementById("id_btnUp").disabled = bool;
		document.getElementById("id_btnLeft").disabled = bool;
		document.getElementById("id_btnRight").disabled = bool;
		document.getElementById("id_btnDown").disabled = bool;
	},
	
	drawingTool = function (event){
		check_tool_activate = false;
		cross_tool_activate = false;
		erase_tool_activate = false;
		type_tool_activate = false;

		draw_tool_activate = true;
	},
	checkTool = function (event){
		draw_tool_activate = false;
		cross_tool_activate = false;
		erase_tool_activate = false;
		type_tool_activate = false;

		check_tool_activate = true;
	},
	crossTool = function (event){
		draw_tool_activate = false;
		check_tool_activate = false;
		erase_tool_activate = false;
		type_tool_activate = false;

		cross_tool_activate = true;
	},
	eraseTool = function (event){
		draw_tool_activate = false;
		check_tool_activate = false;
		cross_tool_activate = false;
		type_tool_activate = false;

		erase_tool_activate = true;
	},
	typeTool = function (event){
		draw_tool_activate = false;
		check_tool_activate = false;
		cross_tool_activate = false;
		erase_tool_activate = false;

		type_tool_activate = true;
	},

    mDown = function(event) {
	    var rect = canvas.getBoundingClientRect();
    	var x = event.clientX-rect.left;
    	var y = event.clientY-rect.top;
        paint = true;
		if (draw_tool_activate == true){
			addClick(x, y);
			redraw();
		}
		if (check_tool_activate == true){
			drawcheckmark(x,y);
		}
		if (cross_tool_activate == true){
			drawcrossmark(x,y);
		}
		if (erase_tool_activate == true){
			addClickErase(x, y);
			erasedraw();
		}
		if (type_tool_activate == true){
			typecomment(x,y);
		}
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
			if (draw_tool_activate == true){
				addClick(x, y, true);
				redraw();
			}
			if (erase_tool_activate == true){
				addClickErase(x, y, true);
				erasedraw();
			}
		}
    },
    addClick = function(x, y, dragging) {
	  clickX.push(x);
	  clickY.push(y);
	  clickDrag.push(dragging);
	},
	addClickErase = function(x, y, dragging){
		clickX_erase.push(x);
		clickY_erase.push(y);
		clickDrag_erase.push(dragging);
	},
	drawcheckmark = function(x,y){
		//ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height); // Clears the canvas
		//loadImgToCanvas();

		var check_img = document.getElementById("checkmarkimg");
		ctx.drawImage(check_img, x, y, 80, 80);
	},
	drawcrossmark = function(x,y){
		//ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height); // Clears the canvas
		//loadImgToCanvas();

		var cross_img = document.getElementById("crossmarkimg");
		ctx.drawImage(cross_img, x, y, 80, 80);
	},
	erasedraw = function(){
		//ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height); // Clears the canvas
		//loadImgToCanvas();
		//ctx.strokeStyle = "#000";
		ctx.strokeStyle = "#fff";
		ctx.lineJoin = "round";
		ctx.lineWidth = 20;

		for(var i=0; i < clickX_erase.length; i++) {
			ctx.beginPath();
			if(clickDrag_erase[i] && i){
				ctx.moveTo(clickX_erase[i-1], clickY_erase[i-1]);
			}else{
				ctx.moveTo(clickX_erase[i], clickY_erase[i]);
			}
			ctx.lineTo(clickX_erase[i], clickY_erase[i]);
			ctx.closePath();
			ctx.stroke();
		}
	},
	typecomment = function(x,y){
		var comment_text = prompt("Please Comment Here", " ");

		ctx.font="18px Georgia";
		ctx.fillText(comment_text,x,y);
	},

	redraw = function(){
	  //ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height); // Clears the canvas
	  //loadImgToCanvas();
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


