def display_board(board)
  top_row = " #{board[0]} | #{board[1]} | #{board[2]} "
  mid_row = " #{board[3]} | #{board[4]} | #{board[5]} "
  bot_row = " #{board[6]} | #{board[7]} | #{board[8]} "
  dash = "-----------"
  puts "#{top_row}\n#{dash}\n#{mid_row}\n#{dash}\n#{bot_row}"
end

def valid_move?(board, pos)
  return false if position_taken?(board, pos)
  return false if !pos.between?(0, 8)
  true
end

def position_taken?(board, pos)
  return false if board[pos] == " " || board[pos] == ""
  return false if board[pos] == nil
  true
end

def move(board, pos, mark="X")
  board[pos] = mark
end

def input_to_index(pos)
  pos.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  idx = input_to_index(input)
  if valid_move?(board, idx)
    move(board, idx, "X")
<<<<<<< HEAD
    display_board(board)
  else
    puts "Invalid move!"
    turn(board)
=======
  else
    until valid_move?(board, idx)
    puts "Please enter 1-9:"
    end
>>>>>>> 38bdd03a2cf1b932c21e573739397820b05a0ec9
  end
end