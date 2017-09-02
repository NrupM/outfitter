class AddOutfitReferenceToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :outfit, foreign_key: true
  end
end
