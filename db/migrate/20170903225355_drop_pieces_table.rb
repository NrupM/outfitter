class DropPiecesTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :pieces
  end
end
