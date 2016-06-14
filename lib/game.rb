require_relative 'board.rb'
require_relative 'computer.rb'
require_relative 'person.rb'

# - Ask person for name
# - Ask person for side
# - Assign computer its side
# - Print out the board
# Loop until someone wins or board is full
#   - Ask person for move
#     - Check if move is valid? If available, marks the board
#        If not available, ask the person to try again
#   - Check for winner or board is full
#   - Execute computer move
#   - Check for winner or board is full
#   - If no winner && board is not full, continue
#   - Break out
# - Tell person result of game
# - Tell person of score

my_game = Game.new
my_game.board.update_board(stuff)

class Game
  attr_accessor :board, :person, :computer # Don't know why readers

  def initialize
    # Initializes nouns
    @board = Board.new # Creates instance here
    @person = Person.new
    @computer = Computer.new
    choose_mark
  end

  def choose_mark
    if @person.mark == "X" # Can access .mark because it's accessor in Person class
      @computer.mark = "O"
    else
      @computer.mark = "X"
    end
  end

  def display_board
  puts "1 #{board.grid[0] || " "} | #{board.grid[1] || " "} | #{board.grid[2] || " "} "
   puts " -----------"
   puts "2 #{board.grid[3] || " "} | #{board.grid[4] || " "} | #{board.grid[5] || " "} "
   puts " -----------"
   puts "3 #{board.grid[6] || " "} | #{board.grid[7] || " "} | #{board.grid[8] || " "} "
  end

end

game = Game.new
game.display_board
