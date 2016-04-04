/**
 * Created by symmetricalspoon on 4/3/16.
 */

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
