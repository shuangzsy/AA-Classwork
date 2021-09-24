# require_relative "board"
#require "singleton"

class Piece
  attr_reader :pos, :board, :color
  attr_writer :pos
  def initialize(color, board, pos)

    @color = color
    @board = board  # piece = Piece.new(b, ) #new_board = Board.new
    @pos = pos 

  end

  # def test_board
  #   return "yes"
  #   #@grid[[0,0]]
  # end

end



# new_board = Board.new
# piece_1 = Piece.new("black", new_board, [1,2])
# piece_2 = Piece.new("black", new_board, [0,2])
# null_piece = NullPiece("red", new_board, [1,1])