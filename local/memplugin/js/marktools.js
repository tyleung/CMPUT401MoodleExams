/**
 * Created by symmetricalspoon on 3/27/16.
 */

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