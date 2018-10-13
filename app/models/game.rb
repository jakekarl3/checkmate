class Game < ApplicationRecord
  has_many :chess_pieces

  
    # after_create :populate_board!

    def chess_piece_at(x, y)
    chess_pieces.where(game_id: id, postion_x: x, postion_y: y).first
    end
 
  
    def populate_board!
     # white pieces
     (0..7).each do |w|
    ChessPiece.create(type: Pawn, game_id: id, postion_x: w, postion_y: 1, color: 'white')
     end

    ChessPiece.create(type: Rook, game_id: id, postion_x: 0, postion_y: 0, color: 'white')
    ChessPiece.create(type: Rook, game_id: id, postion_x: 7, postion_y: 0, color: 'white')
    
    ChessPiece.create(type: Knight, game_id: id, postion_x: 1, postion_y: 0, color: 'white')
    ChessPiece.create(type: Knight, game_id: id, postion_x: 6, postion_y: 0, color: 'white')
    
    ChessPiece.create(type: Bishop, game_id: id, postion_x: 2, postion_y: 0, color: 'white')
    ChessPiece.create(type: Bishop, game_id: id, postion_x: 5, postion_y: 0, color: 'white')
    
    ChessPiece.create(type: Queen, game_id: id, postion_x: 3, postion_y: 0, color: 'white')
    ChessPiece.create(type: King, game_id: id, postion_x: 4, postion_y: 0, color: 'white')
    
     # black pieces
     (0..7).each do |b|
    ChessPiece.create(type: Pawn, game_id: id, postion_x: b, postion_y: 6, color: 'black')
     end

    ChessPiece.create(type: Rook, game_id: id, postion_x: 0, postion_y: 7, color: 'black')
    ChessPiece.create(type: Rook, game_id: id, postion_x: 7, postion_y: 7, color: 'black')
    
    ChessPiece.create(type: Knight, game_id: id, postion_x: 1, postion_y: 7, color: 'black')
    ChessPiece.create(type: Knight, game_id: id, postion_x: 6, postion_y: 7, color: 'black')
    
    ChessPiece.create(type: Bishop, game_id: id, postion_x: 2, postion_y: 7, color: 'black')
    ChessPiece.create(type: Bishop, game_id: id, postion_x: 5, postion_y: 7, color: 'black')
    
    ChessPiece.create(type: Queen, game_id: id, postion_x: 3, postion_y: 7, color: 'black')
    ChessPiece.create(type: King, game_id: id, postion_x: 4, postion_y: 7, color: 'black')
  end
end
