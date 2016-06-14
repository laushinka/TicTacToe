# Don't need initialize

class Computer
  attr_accessor :mark, :move

# Checks list of possible moves that the computer can make
  def makes_move(board)
    # Possible moves into an array
    possible_moves = []
    # Checks each grid and its index
    board.grid.each_with_index do |space, index|
      if space.nil?
        # If the space is available, send its index into the possible_moves array
        possible_moves << index
      end
    end
    # Once that check is done, computer chooses a sample from the possible_moves array
    @move = possible_moves.sample
  end
end
