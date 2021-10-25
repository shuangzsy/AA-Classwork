const MovingObject = require("./moving_object.js");
const Util = require("./util.js");

function Asteroid(pos) {
  this.pos = pos,
  this.color = "#FF0000",
  this.radius = 10,
  this.vel = [10,10]
  // console.log(this.vel);

  const options = {
    pos: this.pos,
    color: this.color,
    radius: this.radius,
    vel: this.vel
  }

  MovingObject.call(this, options)
}


Util.inherits(Asteroid, MovingObject);

module.exports = Asteroid;