class SoldItemsSerializer < ActiveModel::Serializer
  attributes :sold_items_data

  def sold_items_data
    object.map{|s_item| 
      {
        itemName: s_item.item.name,
        price: s_item.item.price,
        category: s_item.item.category,
        id: s_item.id
      }
    }
  end
end
