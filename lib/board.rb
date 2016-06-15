# - Starts with a blank board with 9 spaces
# - Saves moves / Mark the board
# - Game Over
  # - Did anyone win?
  # - Is there a tie?
  # - Is the board full?
#   Square
#   - Is it empty? If not, knows the value
require 'pry'

class Board
  attr_reader :grid, :correct_input, :winner, :who_won, :marks # Can be updated with reader, but not reassign (accessor).

WINNING_COMBINATIONS = [
   [0,1,2],
   [3,4,5],
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
    @marks = ["X", "O"] # Helps going through the players' marks
  end

# - Did anyone win?
# Checks if any of the sets in the winning combinations are all the same as the marks
  def winner
    WINNING_COMBINATIONS.each do |combo| # Go through combinations
      @marks.each do |mark| # Go through marks
        if combo.all? {|space| mark == @grid[space] } # If mark equals space, true
          return mark
        end
      end
    end
    nil
  end

  def who_won
    if winner
      puts "Win"
      # @who_won = Person.name
    end
  end

  def update_board(square, mark)
    unless full? # Without this, the #empty? method gives a nil result when it's full, and the game breaks
      if empty?(square)
        @grid[square] = mark # Reassign mark to the square in the grid
      else
        puts "That space is occupied. Please choose another one."
        new_square = gets.chomp.to_i # Convert to integer or it wouldn't work
        update_board(new_square, mark) # Recursion, bitch!
      end
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

# To check if a square is empty for a player to make a move into
  def empty?(square)
    @grid[square].nil?
  end

  def over?
    # Checks if anyone wins || if the board is full
      winner || full? # !winner.nil? is the same as winner
      # binding.pry
  end

end
