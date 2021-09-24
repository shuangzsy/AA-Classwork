#require_relative "piece"
require_relative "nullpiece"
require_relative "pawn"

class Board
  attr_accessor :grid, :piece, :pos

  def initialize
    @grid = Array.new(8) {Array.new(8)}    
    #@piece = Piece.new #current pos
    
    (0...8).each do |i|
      (0...8).each do |j|
        if i == 0 
          @grid[i][j] = Piece.new("W",self,[i,j])
        elsif i == 1
          @grid[i][j] = Pawn.new("W",self,[i,j])
        elsif i == 6 
          @grid[i][j] = Piece.new("B",self,[i,j])
        elsif i == 7
          @grid[i][j] = Pawn.new("B",self,[i,j])
        else
          @grid[i][j] = NullPiece.instance
        end
      end
    end


    # @piece = Piece.new("B",self,[0,0])
    # @grid[0][0] = @piece
    # @grid[0][1] = NullPiece.instance

    # pawn_pos = [[1,0],[1,1]]
    # pawn_pos.each do |pawn_idx|
    #   @grid[pawn_idx[0]][pawn_idx[1]] = Pawn.new() #pawn_idx = [1,0]
    #   #self[[pawn_idx[0]+5, pawn_idx[1]]] = Pawn.new("B",self,[pawn_idx[0]+5, pawn_idx[1]])
    # end
    # @piece2 = Piece.new("B",self,[0,1])
    # @piece3 = Piece.new("B",self,[0,2])
    # @piece4 = Piece.new("B",self,[0,3])
    # @piece = Piece.new("B",self,[0,4])
    # @piece = Piece.new("B",self,[0,5])
    # @piece = Piece.new("B",self,[0,6])
    # @piece = Piece.new("B",self,[0,7])
    # @piece = Piece.new("W",self,[6,0])
    # @piece = Piece.new("W",self,[6,1])
    # @piece = Piece.new("W",self,[6,2])
    # @piece = Piece.new("W",self,[6,3])
    # @piece = Piece.new("W",self,[6,4])
    # @piece = Piece.new("W",self,[6,5])
    # @piece = Piece.new("W",self,[6,6])
    # @piece = Piece.new("W",self,[6,7])
  end

  #def add_piece

  # i = 0 , 1  => row 1, row 2, 
             # => row 7, row 8, (length -1 -i)=6 , (length-1-i)
  #def self.initial_populate


    
  #   #current pos 
  #   i = 0
  #   while i < 2
  #     @grid[i]=@grid[i].map {|ele| ele = NullPiece.instance}
  #     @grid[7-i] = @grid[7-i].map {|ele| ele = NullPiece.instance}
  #     i += 1
  #   end

  #end
  
  def [](pos)
    row = pos[0]
    col = pos[1]
    @grid[row][col] 
  end

  def []=(pos, val)
    row = pos[0]
    col = pos[1]
    @grid[row][col]= val
  end


  # def valid_pos?(pos)
  #   @piece.valid_move.include?(pos)
  # end

  # def add_piece(piece, pos)
  #   @board[pos]= piece
  # end

  # def find_king(color)
  #   (0...@board.length).each do |i|
  #     (0...@board.length).each do |j|
  #       if @board[i][j].color == :♔
  #         return [i,j] 
  #       end
  #     end
  #   end
  #   return nil   
  # end

  # def checkmate?(color)
  #   #check if WHITE/BLACK king
  #   #check if king has valid moves available
  #   # king.valid_moves.include?(xy)
  #   king_position = find_king(color)
  #   @board[king_position].valid_moves.empty? && in_check?(color)
  # end

  # def in_check?(color) 
  #   #when have no valid moves, wnt to check, if piece is in-chek?
  #   #king has valid moves && another piece wants to eat king
  # end

  def move_piece(start_pos, end_pos)
    if self[start_pos] == NullPiece.instance
      raise "null piece here!"
    elsif 
      self[end_pos] != NullPiece.instance
      raise "occupied!"
    else
      self[end_pos], self[start_pos] = self[start_pos], self[end_pos]
      self[end_pos].pos = end_pos
      return "SUCCESS!"
    end
  end

  # def self.populate_pawn(pawn_pos)
  #   pawn_pos.each do |pawn_idx|
  #     self[pawn_idx] = Pawn.new("W",self,pawn_idx) #pawn_idx = [1,0]
  #     self[[pawn_idx[0]+5, pawn_idx[1]]] = Pawn.new("B",self,[pawn_idx[0]+5, pawn_idx[1]])  #ele = [1,0] => [6,0]
  #   end
  # end

  # def populate_board
  #   pawn_pos = [[1,0]]
  #   populate_pawn(pawn_pos)
  # end


 
end

# new_board = Board.new
# p new_board
#p new_board.piece.test_board


#pos [[1,1],[1,2]]


# def populate_board ()
# pawn_pos = []
# populate_pawn(pawn_pos)
