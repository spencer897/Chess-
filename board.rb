class Board
    def initialize 
        @current_board = Array.new(8){Array.new(8)}
        @current_pieces = []
        @current_piece = []
    end 
    def [](pos)
        row, col = pos
        @current_board[row][col]
    end 
    def []=(pos, val)
        row, col = pos 
        @current_board[row][col] = val 
    end 
    
    def move_piece(color, start_pos, end_pos)
        if self.valid_pos(start_pos)|| self.valid_pos(end_pos)
             raise Exception 
        end 

    end 

    def valid_pos(pos)
        if [pos]
        row == (0..7)
        col == (0..7)
    end 
    def add_piece(piece, pos)
    end 
    def checkmate?(color)
    end 
    def in_check?(color)
    end 
    def find_king(color)
    end 
    def pieces
    end
    def dup
    end 
    def move_piece!(color, start_pos,end_pos)
    end 


end 