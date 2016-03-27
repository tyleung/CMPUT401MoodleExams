// Drawing Code reference http://www.williammalone.com/articles/create-html5-canvas-javascript-drawing-app/#demo-simple
// Canvas reference (note especially toDataURL())  http://www.w3schools.com/tags/ref_canvas.asp
// http://stackoverflow.com/questions/12026345/live-type-in-html5-canvas
// http://www.tcpdf.org/examples/example_009.phps


var draw_class = (function () {
	var canvas = document.getElementById("canvas");
	var ctx = "";
	
	var init = function () {
		console.log("Aaa");
		canvas = document.getElementById("canvas");
		ctx = canvas.getContext("2d");
		canvas.addEventListener("mousedown", mDown);
		testDraw();
		
	},
	testDraw = function () {
	
      if (canvas.getContext) {
        ctx.fillStyle = "rgb(200,0,0)";
        ctx.fillRect (10, 10, 55, 50);

        ctx.fillStyle = "rgba(0, 0, 200, 0.5)";
        ctx.fillRect (30, 30, 55, 50);
      }
    },
    mDown = function(event) {
    	var x = event.pageX;
    	var y = event.pageY;
    	console.log("BBB "+x+" "+y);
        ctx.fillStyle = "rgb(180,0,0)";
        ctx.fillRect (60, 60, 100, 100);
    };
    
	return {init: init};
}());

