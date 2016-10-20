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

  describe '#choose_field' do
    it 'at start of game it takes an argument and changes the field in the array to an x' do
      game = Game.new
      game.choose_field(0,0)
      expect(game.grid).to eq [['X',nil,nil],[nil,nil,nil],[nil,nil,nil]]
    end

    it 'after one turn it changes the field in the array to a y' do
      game = Game.new
      game.choose_field(0,0)
      game.choose_field(0,1)
      expect(game.grid).to eq [['X','Y',nil],[nil,nil,nil],[nil,nil,nil]]
    end
  end

  describe '#player_1_turn' do
    it 'starts with player1s turn being true' do
      game = Game.new
      expect(game.player_1_turn).to eq true
    end

    it 'after choose field is called,  turn player_1_turn becomes false' do
      game = Game.new
      game.choose_field(0,0)
      expect(game.player_1_turn).to eq false
    end

    it 'after choose_field is called_twice, turn player_1 turn becomes true again' do
      game = Game.new
      game.choose_field(0,0)
      game.choose_field(0,0)
      expect(game.player_1_turn).to eq true
    end

  end
end
