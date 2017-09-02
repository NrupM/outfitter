class Item < ApplicationRecord
  belongs_to :outfit, optional: true
end
