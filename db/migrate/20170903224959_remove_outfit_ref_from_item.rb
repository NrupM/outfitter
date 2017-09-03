class RemoveOutfitRefFromItem < ActiveRecord::Migration[5.1]
  def change
    remove_reference :items, :outfit, foreign_key: true
  end
end
