class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :store_type, :password, :categories, :transaktions

  def categories
    self.object.categories.map do |category|
      {id: category.id,
       name: category.name,
       image_url: category.image_url,
       items: category.items
     }
    end
  end

  def transaktions
    self.object.transaktions.map do |transaktion|
      {
       id: transaktion.id,
       total: transaktion.total,
       store: transaktion.store_id,
       sold_items: transaktion.sold_items
      }
    end
  end


end
