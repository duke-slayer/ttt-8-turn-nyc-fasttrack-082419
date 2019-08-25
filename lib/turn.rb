def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1 
end 
#move(board, 0, "X")

#move is a destructive method i.e. permanently alters the array 
def move(board, position, char ="X")
  board[position] = char
end

def valid_move?(board, index)
  if board[index] == nil
    return false 
  elsif !position_taken?(board, index)
    return true 
  end
end 

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == nil || board[index] ==""
      return false
  elsif board[index] == " "
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9"
  input = gets.chomp
  index = input_to_index
  if valid_move?(board, index)
    #want to allow the users desired move to reflect on the board 
    move(board, index)
    display_board(board)
  elsif turn(board)
  end
end
