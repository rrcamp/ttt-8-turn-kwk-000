def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ",
       "-----------",
       " #{board[3]} | #{board[4]} | #{board[5]} ",
       "-----------",
       " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true
  end
end


def valid_move?(board, index)
position = index.to_i
  if position_taken?(board, index) == false && position.between?(0, 8)
    return true

  else
    return false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
      puts "That position is already taken, please enter another."
      turn(board)
    
  end
end
