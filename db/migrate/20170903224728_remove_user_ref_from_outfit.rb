class RemoveUserRefFromOutfit < ActiveRecord::Migration[5.1]
  def change
    remove_reference :outfits, :user, foreign_key: true
  end
end
