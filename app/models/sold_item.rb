class SoldItem < ApplicationRecord
    belongs_to :item
    belongs_to :transaktion
end
