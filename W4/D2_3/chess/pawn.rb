require_relative "piece"

class Pawn < Piece
  #attr_reader :pos, :color, :board
  
  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :P
  end

  def moves 
    pawn_moves = []                     
    pawn_moves << [self.forward_dir + pos[0], pos[1]]
    if self.forward_steps == 2
      pawn_moves << [(self.forward_dir * 2) + pos[0], pos[1]]
    end
  end 

  private

  def at_start_row?
    if pos[0] == 1 || pos[0] == 6
      return true
    else
      return false
    end
  end

  def forward_dir #returns 1 or -1    
    if color == "W" 
      return 1
    elsif
      color == "B"
      return -1
    else
      raise "error"
    end
  end

  def forward_steps   #pawn.forward_steps
    if self.at_start_row?
      return 2
    else
      return 1
    end

  end

  def side_attacks
    #if object at diagonal, is a different color, take its place
    #black or white
    #check if within board + opposite color + if its a piece (not null pc)
    #going up:[-1, 1][1, 1]
    #going down: [-1, 1*-1] , [1, 1*-1]
    

  end

end