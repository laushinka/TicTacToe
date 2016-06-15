# - Initializes with:
  # - a board instance
  # - a person instance
  # - a computer instance
  # - assigns the mark for the computer

# - Displays the board

# - RUN GAME
  # Loop until someone wins or board is full
#   - Ask person for move
#     - Check if move is valid? If available, marks the board
#        If not available, ask the person to try again
#   - Check for winner or board is full
#   - Execute computer move
#   - Check for winner or board is full
#   - If no winner && board is not full, continue
#   - Break out
  # Tell person result of game
  # Tell person of score

require_relative 'board.rb'
require_relative 'computer.rb'
require_relative 'person.rb'
require 'pry'

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
    if @person.mark == "X" # Can access .mark because it's attr_accessor in Person class
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
   puts " ___________"

  end

  def run_game
    while !board.over?
      person.choose_move
      board.update_board(person.move, person.mark)
      display_board
      if board.winner
        break
      end
      computer.makes_move(board)
      board.update_board(computer.move, computer.mark)
      display_board
      board.winner
    end
    puts "Game Over!"
  end

  def round

  end
end

game = Game.new
game.run_game

# Pry.start
