class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :store_id, :items
end
