# code your #valid_move? method here
def valid_move?(board,position)
  value = nil
  if ((position.between?(0,8)) && !(position_taken?(board,position)))
    value = true
  else
    value = false
  end
  value
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, position)
  if (board[position] == " ") || (board[position] == "") || (board[position] == nil)
    return false
  elsif (board[position] == "X") || (board[position] == "O")
    return true
  end
end