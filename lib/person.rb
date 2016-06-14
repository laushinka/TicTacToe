# Initializes:
#   - name
class Person
  attr_accessor :move, :name, :mark # Will need to change the move

  def initialize
    puts "What's your name?"
    @name = gets.chomp
    puts "Please choose a mark between 'X' and 'O'."
    @mark = gets.chomp.upcase
    @@names << @name
  end
  #John, Mary, Larry
  def choose_move
    puts "Please choose a position to move to between 1-9."
    input = gets.chomp.to_i # Not instance variable because we don't need to access it anywhere else yet
    if input > 0 && input < 10
      @move = input
    else
      puts "Your choice is not between 1-9. Please choose again."
      choose_move # Recursion again, bitch!!
    end
    
  end
