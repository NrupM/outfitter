class RemoveUserRefFromItem < ActiveRecord::Migration[5.1]
  def change
    remove_reference :items, :user, foreign_key: true
  end
end
