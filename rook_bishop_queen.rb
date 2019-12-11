require_relative "slideable.rb"
require_relative "piece.rb"

class Rook < Piece 
    include Slideable 
    def symbol
    
    end
    
    def move_dirs
         1
    end 
end 

class Bishop < Piece 
    include Slideable 
    def symbol
    
    end
    
    def move_dirs
         2
    end 
end 

class Queen < Piece 
    include Slideable
    def symbol
    
    end
     
    def move_dirs
         3 
    end 
end 