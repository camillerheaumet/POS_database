# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all
Category.destroy_all
Item.destroy_all
Transaktion.destroy_all

Store.create(
  {name: 'ali baba', store_type: 'sports', password: 'password'}
)

Category.create(
  {name: 'Footwear', image_url: 'https://static.enko-running-shoes.com/images/running_201808/running-shoes-1_1-zoom.jpg', store_id: 1}
)

Transaktion.create(
  {date: Date.today, time: Time.now, total: 99, store_id: 1}
)

Item.create(
  {name: 'slick', price: 99, category_id: 1, transaktion_id: 1}
)
