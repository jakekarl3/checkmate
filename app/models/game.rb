class Game < ApplicationRecord
  has_many :pieces
  
  after_create :populate_board!
  
  def populate_board!
    #white pieces
    (0..7).each do |i|
      Pawn.create(
        x_position: i,
        y_position: 1,
        color: white
        )
    end
    
    Rook.create(x_position: 0, y_position: 0, color: white)
    Rook.create(x_position: 7, y_position: 0, color: white)
    
    Knight.create(x_position: 1, y_position: 0, color: white)
    Knight.create(x_position: 6, y_position: 0, color: white)
    
    Bishop.create(x_position: 2, y_position: 0, color: white)
    Bishop.create(x_position: 5, y_position: 0, color: white)
    
    Queen.create(x_position: 3, y_position: 0, color: white)
    King.create(x_position: 4, y_position: 0, color: white)
    
    #black pieces
    (0..7).each do |i|
      Pawn.create(
        x_position: i,
        y_position: 6,
        color: black
        )
    end
    Rook.create(x_position: 0, y_position: 7, color: black)
    Rook.create(x_position: 7, y_position: 7, color: black)
    
    Knight.create(x_position: 1, y_position: 7, color: black)
    Knight.create(x_position: 6, y_position: 7, color: black)
    
    Bishop.create(x_position: 2, y_position: 7, color: black)
    Bishop.create(x_position: 5, y_position: 7, color: black)
    
    Queen.create(x_position: 3, y_position: 7, color: black)
    King.create(x_position: 4, y_position: 7, color: black)
  end
end
