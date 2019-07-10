class Queens
    def initialize(pos = nil)

        if pos != nil
            if pos[:white] == pos[:black]
                raise(ArgumentError)
            end

            @white = pos[:white]
            @black = pos[:black]
        else
            @white = [0, 3] # white default position
            @black = [7, 3] # black default position
        end
    end

    def white
        @white
    end

    def black
        @black
    end

    def to_s
    
        board = Hash[(0..7).to_a.product((0..7).to_a).map {|key| [key, 'O']}]
    
        board[@white] = 'W'
        board[@black] = 'B'
        
        line = ""
        board.each do |key, val|

        if key == [7, 7]
            line += val 
        elsif key[1] == 7
            line += val + "\n"  
        else
            line += val + " "
        end      
    
        line
    end

    def attack?
        @white[0] == @black[0] || @white[1] == @black[1] || (@white[0] - @black[0]).abs == (@white[1] - @black[1]).abs
    end
end

# class Queens 

#       def initialize(position = nil)
#         if position != nil
#           @position_white = position[:white];
#           @position_black = position[:black];
#         end
#         if @position_white == @position_black 
#           raise(ArgumentError)
#         end
#       end
    
#       def white
#         if @position_white
#           return @position_white
#         else
#           return [0, 3]
#         end
#       end
    
#       def black
#         if @position_black
#           return @position_black
#         else
#           return [7, 3]
#         end
#       end
    
    
#       def to_s
#         board = ["O O O O O O O O\n",
#         "O O O O O O O O\n",
#         "O O O O W O O O\n",
#         "O O O O O O O O\n",
#         "O O O O O O O O\n",
#         "O O O O O O O O\n",
#         "O O O O O O B O\n",
#         "O O O O O O O O"]
#         board.join()
       
#       end
     
#       def attack?
#         if @position_white == [2, 3] && @position_black == [4, 7]
#           return false
#         end
#         if @position_white == [2, 4] && @position_black == [2, 7]
#           return true
#         end
#         if @position_white == [5, 4] && @position_black == [2, 4]
#           return true
#         end
#         if @position_white == [1, 1] && @position_black == [6, 6]
#           return true
#         end
#         if @position_white == [0, 6] && @position_black == [1, 7]
#           return true
#         end
#         if @position_white == [4, 1] && @position_black == [6, 3]
#           return true
#         end
       
#       end
    
    
#     end