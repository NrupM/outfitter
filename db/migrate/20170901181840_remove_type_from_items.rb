class RemoveTypeFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :type, :string
  end
end
