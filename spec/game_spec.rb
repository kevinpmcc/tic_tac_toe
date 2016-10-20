require 'game'

describe Game do

  describe '#initialize' do
    it 'creates a grid which is a 3 x 3 dimensional array' do
      game = Game.new
      expect(game.grid.length).to eq 3  
    end

    it 'creates a grid which is a 3 x 3 dimensional array' do
      game = Game.new
      expect(game.grid[0].length).to eq 3  
    end
  end

end
