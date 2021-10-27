const View = require('./ttt-view.js');
const Game = require('../ttt_node/game.js');

document.addEventListener("DOMContentLoaded", () => {
  let game = new Game();

  const el = document.querySelector(".ttt");

  let view = new View(game, el);

  // ul.addEventListener("click", view.handleClick);
  //view.bindEvents()
});
