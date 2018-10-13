require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "populate board" do
    it "determines if the populated board is complete" do
      game = FactoryBot.create(:game)
      game.populate_board!
      expect(game.chess_pieces.count).to eq(32)
    end
 end

  describe "populate board" do
  it "Places the white Pawns onto the boards starting game position" do
    game = FactoryBot.create(:game)
    game.populate_board!

    expect(game.chess_pieces.find_by(postion_x: 0, postion_y: 1).type).to eq 'Pawn'
    expect(game.chess_pieces.find_by(postion_x: 1, postion_y: 1).type).to eq 'Pawn'
    expect(game.chess_pieces.find_by(postion_x: 2, postion_y: 1).type).to eq 'Pawn'
    expect(game.chess_pieces.find_by(postion_x: 3, postion_y: 1).type).to eq 'Pawn'
    expect(game.chess_pieces.find_by(postion_x: 4, postion_y: 1).type).to eq 'Pawn'
    expect(game.chess_pieces.find_by(postion_x: 5, postion_y: 1).type).to eq 'Pawn'
    expect(game.chess_pieces.find_by(postion_x: 6, postion_y: 1).type).to eq 'Pawn'
    expect(game.chess_pieces.find_by(postion_x: 7, postion_y: 1).type).to eq 'Pawn'

    expect(game.chess_pieces.find_by(postion_x: 0, postion_y: 1).color).to eq 'white'
    expect(game.chess_pieces.find_by(postion_x: 1, postion_y: 1).color).to eq 'white'
    expect(game.chess_pieces.find_by(postion_x: 2, postion_y: 1).color).to eq 'white'
    expect(game.chess_pieces.find_by(postion_x: 3, postion_y: 1).color).to eq 'white'
    expect(game.chess_pieces.find_by(postion_x: 4, postion_y: 1).color).to eq 'white'
    expect(game.chess_pieces.find_by(postion_x: 5, postion_y: 1).color).to eq 'white'
    expect(game.chess_pieces.find_by(postion_x: 6, postion_y: 1).color).to eq 'white'
    expect(game.chess_pieces.find_by(postion_x: 7, postion_y: 1).color).to eq 'white'
  end
end

  describe "populate board" do
  it "Places the white Rooks onto the boards starting game position" do
    game = FactoryBot.create(:game)
    game.populate_board!

    expect(game.chess_pieces.find_by(postion_x: 0, postion_y: 0).type).to eq 'Rook'
    expect(game.chess_pieces.find_by(postion_x: 7, postion_y: 0).color).to eq 'white'
  end
end


end


  
  



