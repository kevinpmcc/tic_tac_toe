class Game
  attr_reader :grid, :player_1_turn

  def initialize
    @grid = [[nil,nil,nil],
             [nil,nil,nil],
             [nil,nil,nil]]
    @player_1_turn = true
  end

  def choose_field(index1, index2)
    if @grid[index1][index2] 
      raise 'Field already selected'
    else
      @grid[index1][index2] = current_player_symbol
      check_for_winner ? winner : change_turn
    end
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

  def check_for_winner
    return_value = false
    grid.each {|array|
      print array
      if array == ['X','X','X'] || array == ['Y','Y','Y']
         return_value = true
      end 
    }    
    return_value
  end

  def winner
    player_1_turn ? 'player 1' : 'player 2'
  end
end
