class Item < ApplicationRecord
  belongs_to :category
  has_many :sold_items
end
