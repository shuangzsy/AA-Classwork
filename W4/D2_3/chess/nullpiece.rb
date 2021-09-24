require_relative "piece"
require "singleton"

class NullPiece < Piece
  # include Singleton #its own single instance of Nullpc
  include Singleton
  attr_reader :color, :symbol

  def initialize
    @color = "Red"
    @symbol = :O
  end

  def empty?
    true
  end

  def moves
    nil
  end
end
