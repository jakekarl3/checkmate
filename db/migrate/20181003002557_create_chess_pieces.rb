class CreateChessPieces < ActiveRecord::Migration[5.0]
  def change
    create_table :chess_pieces do |t|
      t.integer :id
      t.string :name
      t.string :type
      t.string :color
      t.integer :postion_x
      t.integer :postion_y
      t.timestamps
    end
  end
end
