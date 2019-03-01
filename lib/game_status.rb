# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  empty_board = board.all? do {|x| x == " "}
  winner = []
  WIN_COMBINATIONS.each do |combo|
    if empty_board || board.full?(board)
      return false
    else if combo.full? {|position| board[position] == "X"} || combo.full? {|position| board[position] == "O"}
      return winner = combo
      end
    end
  winner
end
    
end