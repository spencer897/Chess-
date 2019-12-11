module Slideable 

  HORIZONTAL_DIRS = [
    [0, 1], #right
    [-1, 0], #up
    [1, 0], #down
    [0, -1] #left
  ]
  DIAGONAL_DIRS = [
    [-1,-1], #up left 
    [1, 1], #down right 
    [-1, 1],#up right
    [1, -1], # down left
    
  ]
  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    # check move_dirs of the piece => 3 possible options
    # call
    # grow_unblocked_moves_in_dir(dx, dy)
    # return an array of all possible moves
    #
    # possible_moves = []
      
    # CLASS_CONSTANT.each do |del| 
    # possible_moves +=  grow_unblocked_moves_in_dir(del)
    # end
    array =[]
    if move_dirs == 1 
      self.horizontal_dirs.each do |delta|
        array += self.grow_unblocked_moves_in_dir(delta)
      end
    elsif move_dirs == 2
      self.diagonal_dirs.each do |delta|
        array += self.grow_unblocked_moves_in_dir(delta)
      end 
    else
      self.horizontal_dirs.each do |delta|
        array += self.grow_unblocked_moves_in_dir(delta)
      end 
      self.diagonal_dirs.each do |delta|
        array += self.grow_unblocked_moves_in_dir(delta)
      end 
    end 
    array 
  end
  
  private 

  def move_dirs
    # check which class constant variable to iterate through
    # 1 will be returned for rook; 2 will be returned for 
    # bishpp; 3 will be returned for queen 
  
    raise "PROBLEM. YOU ARE IN SLIDABLE MODULE"
  end 

  def grow_unblocked_moves_in_dir(dx, dy) #directions (0,1)

    if self.horizontal_dirs.include?[dx, dy] || self.diagonal_dirs.include?[dx, dy]
      delta = [dx,dy]
    else
      raise "Invalid move" #rescue later
    end
    
    possible_moves = []
    new_pos = @pos[0] + delta[0], @pos[1] + delta[1]
    until @board[new_pos] != nil || !(valid_moves.include?(@board[new_pos]))
      new_pos = new_pos[0] + delta[0], new_pos[1]+ delta[1]
      possible_moves << new_pos 
    end
    
    if @color == @board[new_position].color 
      possible_moves = possible_moves.drop(1)
    end 
      
  end 
  

end 