class Game
  attr_reader :grid, :player_1_turn

  def initialize
    @grid = [[nil,nil,nil],
             [nil,nil,nil],
             [nil,nil,nil]]
    @player_1_turn = true
  end

  def choose_field(index1, index2)
    @grid[index1][index2] = current_player_symbol
    change_turn
  end
  
  def player_1_turn
    @player_1_turn
  end

  def change_turn
    @player_1_turn = !@player_1_turn
  end

  def current_player_symbol
    player_1_turn ? 'X' : 'Y'
  end

end
