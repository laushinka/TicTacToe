# Don't need initialize

class Computer
  attr_accessor :mark, :move

  def makes_move(board)
    possible_moves = []
    board.grid.each_with_index do |space, index|
      if space.nil?
        possible_moves << index
      end
    end
    @move = possible_moves.sample
  end
end
