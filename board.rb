require_relative "piece.rb"

class Board
    def initialize 
        @current_board = Array.new(8){Array.new(8)}  
    end 

    def [](pos)     #([1,0])
        row, col = pos 
        @current_board[row][col]
    end 
    
    def []=(pos, val)
        row, col = pos 
        @current_board[row][col] = val 
    end 
    
    def move_piece(color, start_pos, end_pos)
        if self[start_pos].is_a?(nil) || !(self.valid_pos(end_pos)) # why doesnt it work without ()
             raise Exception 
        end 
    end 

    def valid_pos(pos) #position either holds nullpiece or moving piece     
        row, col = pos 
        (row > - 1 && row < 8 ) && (col > - 1 && col < 8) 
    end 
    
    def add_piece(piece, pos)
        #initialize a piece and set it to the pos
        self[pos] = piece
    end 
    # def checkmate?(color)
    # end 
    # def in_check?(color)
    # end 
    # def find_king(color)
    # end 
    # def pieces
    # end
    # def dup
    # end 
    # def move_piece!(color, start_pos,end_pos)
    # end 


end 