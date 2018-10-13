require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "populate_board!" do
    it "determines if the populated board is complete" do
      game = FactoryBot.create(:game)
      game.populate_board!
      expect(game.chess_pieces.count).to eq(32)
    end
 end
end

  
  



