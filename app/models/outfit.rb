class Outfit < ApplicationRecord
  has_many :items, dependent: :nullify
end
