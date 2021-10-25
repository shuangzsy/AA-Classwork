const MovingObject = require("./moving_object.js");
const Util = require("./util.js");

function Asteroid(pos) {
  const options = {
    pos: pos,
    color: "#FF0000",
    radius: 10,
    vel: Util.randomVec(20),
  };

  MovingObject.call(this, options); //grab the properties
}

Util.inherits(Asteroid, MovingObject);// grab the functions

module.exports = Asteroid;