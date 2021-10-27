class View {
  constructor(game, el) {
    this.game = game; //is this necessary?
    this.el = el; //is this necessary?
    this.setupBoard();
    this.bindEvents();
  }

  
  bindEvents() {
    const ul = document.querySelector("ul");
    console.log('bindEvents this');
    console.log(this);

    ul.addEventListener("click", this.handleClick.bind(this));
  }

  
  handleClick(e) {
    console.log('handleClick this');
    console.log(this);

    let square = e.target;

    this.makeMove(square);
    
    //read e.taget (li)'s id attribute and get pos
    //Element#getAttribute and #setAttribute
    //this.game.playMove(pos)
  }

  makeMove(square) {
    let row = parseInt(square.id[0]);
    let col = parseInt(square.id[2]);

    // console.log('this.game:');
    // console.log(this.game);
    // console.log('this.game.currentPlayer');
    // console.log(this.game.currentPlayer);

    console.log([row,col]);
    console.log(this.game);
    console.log(this.game.isOver());
    this.game.playMove([row, col]);
    
    
    square.innerHTML = ` ${this.game.currentPlayer}`;
    
    if (this.game.isOver()) {
      this.game.board.print();
      if (this.game.winner()) {
        const msg = document.createElement("h2")
        msg.innerHTML = `${this.game.winner()} has won!`
        document.querySelector("body").appendChild(msg);
        console.log(`${this.game.winner()} has won!`);
      } else {
        const msg = document.createElement("h2")
        msg.innerHTML = 'NO ONE WINS!'
        document.querySelector("body").appendChild(msg);
        console.log('NO ONE WINS!');
      }
    }

  }

}

View.prototype.setupBoard = function () {
  const ul = document.createElement("ul");
  for(let r = 0; r < 3; r++){
    const div = document.createElement("div");
    for(let c = 0; c < 3; c++) {
      const li = document.createElement("li");
      li.id = `${r}_${c}`;
      div.appendChild(li);
    }
    ul.appendChild(div);
  }
  this.el.appendChild(ul);
};

module.exports = View;
