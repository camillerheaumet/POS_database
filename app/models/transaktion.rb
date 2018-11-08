class Transaktion < ApplicationRecord
  has_many :items
  has_many :categories, through: :items
  belongs_to :store
end
