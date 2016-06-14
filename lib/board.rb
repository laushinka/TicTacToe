# - Starts with a blank board with 9 spaces
# - Saves moves / Mark the board
# - Game Over
  # - Did anyone win?
  # - Is there a tie?
  # - Is the board full?
#   Square
#   - Is it empty? If not, knows the value
class Board
  attr_reader :grid # Can be updated with reader, but not reassign (accessor).

WINNING_COMBINATIONS = [
   [0,1,2],
   [2,4,5],
   [6,7,8],
   [0,3,6],
   [1,4,7],
   [2,5,8],
   [0,4,8],
   [2,4,6]
 ]

  def initialize
    # - Starts with a blank board with 9 spaces
    @grid = Array.new(9)
  end

# - Did anyone win?
  def winner
    marks = [:x, :o] # To make going through the variables easier
    WINNING_COMBINATIONS.each do |combo| # Go through combinations
      marks.find do |mark| # Go through marks
        combo.all? do |space| # Go through all of combo
          mark == space # If mark equals space, true
        end
      end
    end
    nil # Each returns nil
  end

  def update_board(square, mark)
    if empty?(square) # Passes this line to the #empty? method
      @grid[square] = mark # Reassign mark to the square in the grid
    else
      puts "That space is occupied. Please choose another one."
      new_square = gets.chomp
      update_board(new_square, mark) # Recursion, bitch!
    end
  end
  # - Is there a tie?
  def tie?
    winner.nil? && full?
  end

# - Is the board full?
  def full?
    @grid.none? { |space| space.nil? }
  end

# - Is it empty? If not, knows the value
# To check if someone can make a move
  def empty?(square)
    @grid[square].nil?
  end

  def over?
    # Checks if anyone wins || if the board is full
      !winner.nil? || full?
  end

end
