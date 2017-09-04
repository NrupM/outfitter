class Item < ApplicationRecord
  has_many :outfit_items, dependent: :destroy
  has_many :outfits, through: :outfit_items
  has_attached_file :image, styles: { large: "600x600>", medium: "200x200>", small: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
