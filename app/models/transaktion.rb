class Transaktion < ApplicationRecord
  has_many :sold_items
  has_many :categories, through: :items
  belongs_to :store
end
