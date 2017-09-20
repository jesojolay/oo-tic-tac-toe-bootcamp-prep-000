class TicTacToe

    def initialize(board = nil)
        @board = Array.new(9," ")
    end

    WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,4,8],  # Top-left diagonals
  [2,4,6],  # Top-right diagonals
  [0,3,6],  # left vertical
  [1,4,7],  # Middle vertical
  [2,5,8]  # Right vertical
]

def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(index,current_player)
  @board[index] = current_player
end

def position_taken?(location)
  @board[location] != " " && @board[location] != ""
end

def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end

def turn_count
    counter = 0
@board.each do |spot|
    if spot != " "
        counter += 1
    end
end
return counter
end

def current_player(board)
    if turn_count(board) == 0
        return "X"
    elsif turn_count(board).even?
        return "X"
    elsif turn_count(board).odd?
        return "O"
    end
end

end
