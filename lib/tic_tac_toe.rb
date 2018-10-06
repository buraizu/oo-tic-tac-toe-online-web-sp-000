class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  WIN_COMBINATIONS = [
    [0,1,2],  # Top Row
    [3,4,5],  # Middle Row
    [6,7,8],  # Bottom Row
    [0,4,8],  # Diagonal Right
    [2,4,6],  # Diagonal Left
    [0,3,6],  # Left Column
    [1,4,7],  # Middle Column
    [2,5,8]   # Right Column
  ]
end
