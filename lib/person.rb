# Initializes:
#   - name
class Person
  attr_accessor :move, :name, :mark, :correct_input # Will need to change the move

  def initialize
    puts "What's your name?"
    @name = gets.chomp
    puts "Please choose a mark between 'X' and 'O'."
    @mark = gets.chomp.upcase

  end

  def choose_move
      puts "Please choose a position to move to between 1-9."
      loop do
        input = gets.chomp.to_i
        if input > 0 && input < 10
          @move = input-1
          return @move
        else
          puts "Your choice is not between 1-9. Please choose again."
        end
      end
    end
  end

    # def correct_input?(move)
    #   @move = move
    #   @move > 0 && @move < 10
    #   # binding.pry
    # end

  # def choose_move
  #   puts "Please choose a position to move to between 1-9."
  #   input = gets.chomp.to_i
  #   if input > 0 && input < 10
  #     @move = input
  #   else
  #     puts "Your choice is not between 1-9. Please choose again."
  #     choose_move # Go back to the start of the method. # Recursion again, bitch!
  #   end
  # end

# Not instance variable because we don't need to access it anywhere else yet
