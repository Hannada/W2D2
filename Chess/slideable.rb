module Slideable
  
  def horizontal_dirs 
    HORIZONTAL_DIRS
  end
  
  def diagonal_dirs 
    DIAGONAL_DIRS
  end

  def moves
    all_moves = []
    move_dirs.each do |dir|
      all_moves << grow_unblocked_moves_in_dir(dir[0], dir[1])
    end
    all_moves
  end

  private

  HORIZONTAL_DIRS = [ [-1, 0], [1, 0], [0, -1], [0, 1] ]
  DIAGONAL_DIRS = [ [-1, -1], [-1, 1], [1, -1], [1, 1] ]

  def move_dirs
    horizontal_dirs + diagonal_dirs
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    move_list = [[dx, dy]]
    until move_list.count == 7
      move_list << [ (move_list.last[0] + dx), (move_list.last[1] + dy)]
    end
    move_list
  end
end

# if dx.abs > 7 || dy.abs > 7
#   return move_list
# elsif !next_step.empty?
#   raise ArgumentError.new("There's a piece there already!")
# else
#   move_list << next_step
# end
