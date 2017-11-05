document.addEventListener("DOMContentLoaded", function(){
  const drawing = document.getElementById("mycanvas");
  drawing.width = 500;
  drawing.height = 500;

  const ctx = drawing.getContext('2d');
  ctx.fillStyle = "orange";
  ctx.fillRect(0,0, 500, 500);

  ctx.beginPath();
  ctx.arc(250, 250, 50, 0, 2*Math.PI, true);
  ctx.strokeStyle = "blue";
  ctx.lineWidth = 10;
  ctx.stroke();

  //Fill circle color
  ctx.fillStyle = "green";
  ctx.fill();
});
