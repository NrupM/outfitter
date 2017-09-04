class Item < ApplicationRecord
  has_many :outfit_items, dependent: :destroy
  has_many :outfits, through: :outfit_items
end
