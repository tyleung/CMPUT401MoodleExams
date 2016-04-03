/**
 * Created by symmetricalspoon on 3/27/16.
 */


var init = function () {
    canvas = document.getElementById("canvasInAPerfectWorld");
    ctx = canvas.getContext("2d");

    // add event listeners
    canvas.addEventListener("mousedown", mDown);
    canvas.addEventListener("mouseup", mUp);
    canvas.addEventListener("mousemove", mMove);
    canvas.addEventListener("mouseleave", mUp);
}