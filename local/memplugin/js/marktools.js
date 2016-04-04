/**
 * Created by symmetricalspoon on 4/3/16.
 */

<<<<<<< HEAD
// http://www.w3schools.com/tags/canvas_drawimage.asp
// http://www.w3schools.com/html/html5_canvas.asp
// http://www.williammalone.com/articles/create-html5-canvas-javascript-drawing-app/#demo-simple

var init = function () {
    canvas = document.getElementById("canvasInAPerfectWorld");
    ctx = canvas.getContext("2d");

    // add event listeners
    canvas.addEventListener("mousedown", mDown);
    canvas.addEventListener("mouseup", mUp);
    canvas.addEventListener("mousemove", mMove);
    canvas.addEventListener("mouseleave", mUp);
}

function choose_color (){
    var colors = document.getElementsByClassName("tool_choose_color");
    var colorchooser = document.createElement("div");
    colorchooser.textContent = "!!!";
    colors.appendChild(colorchooser);
}
=======
var canvas = document.getElementById("id_canvas");
var ctx = canvas.getContext("2d");


function test(){
    alert("!!!");
}

function markcheck(){
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

}
>>>>>>> 0631f70f0a3a92dc043279c6e1971341c9d79aa9
