require_relative 'piece'

class Knight < Piece
  include Stepable

  def symbol
    :N 
  end
  
  protected

  def move_diffs
    [ [-2, -1], [-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [-1, -2], [1, -2] ]
  end

end