console.log("Webpack is working!")

const MovingObject = require("./moving_object.js");

// set code to do something at a specific time
window.addEventListener('DOMContentLoaded', (event) => {
  const canvasEl = document.getElementById("canvas");
  const ctx = canvasEl.getContext("2d");
  canvasEl.height = window.innerHeight;
  canvasEl.width = window.innerWidth;
  
  let newObj = new MovingObject({
    pos: [30, 30],
    vel: [10, 10],
    radius: 5,
    color: "#00FF00"
  });
  newObj.draw(ctx);
  
  // window is an obj; create new key[val] pair to run in the browser console
  // window.newObj = newObj;
  // window.ctx = ctx;


});   



window.MovingObject = MovingObject;