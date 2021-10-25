function Game(dim_x,dim_y, num_asteroids){
  this.DIM_X = dim_x;
  this.DIM_Y = dim_y;
  this.NUM_ASTEROIDS = num_asteroids;
  this.asteroids = [];
  while (this.addAsteroids < num_asteroids){
    this.addAsteroids()
  }

}

Game.prototype.randomPosition = function () {
  let x = Math.floor(Math.random() * this.DIM_X);
  let y = Math.floor(Math.random() * this.DIM_Y);
  return [x, y];
}

Game.prototype.addAsteroids = function(){
  
}

