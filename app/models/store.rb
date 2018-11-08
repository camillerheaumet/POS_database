class Store < ApplicationRecord
  has_many :categories
  has_many :items, through: :categories
  has_many :transaktions

  validates :name, :store_type, :password, presence: true
  validates :name, uniqueness: true
end
