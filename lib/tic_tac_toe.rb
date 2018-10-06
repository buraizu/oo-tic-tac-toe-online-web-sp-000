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

  def move(index, current_player = "X")
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
  @board.each do |element|
    if element == 'X' || element == 'O'
      counter += 1
      end
    end
    return counter
  end

  def current_player
    if turn_count.odd?
      return 'O'
    else
      return 'X'
    end
  end

end
