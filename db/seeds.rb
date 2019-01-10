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
  {name: 'Ali Baba', store_type: 'Sports', password: 'password'}
)
Store.create({name: 'Jean Coutu London', store_type: 'Pharmacy', password: 'password'})
Store.create({name: "Jo's Bunnies & Pets", store_type: "Pet shop", password: "password"})
Store.create({name: "I-Kay-A", store_type: "Furniture, Kitchen Appliances and Home Accessories", password: "password"})
Store.create({name: "Flatiron Gamers", store_type: "Game Shop", password: "password"})


Category.create({name: 'Footwear', image_url: 'https://image.flaticon.com/icons/png/64/1021/1021743.png', store_id: 1})
Category.create({name: 'Clothing', image_url: 'https://image.flaticon.com/icons/png/64/1021/1021747.png', store_id: 1})
Category.create({name: 'Fitness', image_url: 'https://image.flaticon.com/icons/png/64/1054/1054804.png', store_id: 1})
Category.create({name: 'Pharmacy', image_url: 'https://image.flaticon.com/icons/png/64/1150/1150370.png', store_id: 2})
Category.create({name: 'Pets supply', image_url: 'https://image.flaticon.com/icons/png/64/1025/1025395.png', store_id: 3})
Category.create({name: 'Home Appliance', image_url: 'https://image.flaticon.com/icons/png/64/1150/1150397.png', store_id: 4})
Category.create({name: 'Games', image_url: 'https://image.flaticon.com/icons/png/64/720/720706.png', store_id: 5})
Category.create({name: 'Entertainment', image_url: 'https://image.flaticon.com/icons/png/64/1152/1152379.png', store_id: 5})



Transaktion.create({total: 99, store_id: 1})
Transaktion.create({total: 58, store_id: 1})
Transaktion.create({total: 50, store_id: 1})
Transaktion.create({total: 685, store_id: 1})


Item.create(
  {name: 'slick', price: 99, 
  image_url: 'https://i.pinimg.com/236x/70/42/2b/70422b5f94d3a47b9bc3c203ba51bdf9--blue-flats-blue-shoes.jpg', 
  category_id: 1}
)
Item.create(
  {name: 'trainers', price: 49, 
  image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKeRJRpgPNHIXyPsP-_B8B8vwU8Vj31DrhnPJt7vvENAQAoIumXg', 
  category_id: 1}
)
Item.create(
  {name: 'Single Right Flip Flop', price: 9, 
  image_url: 'https://d2jnhxnrtsnb0r.cloudfront.net/media/catalog/product/cache/24/thumbnail/960x/17f82f742ffe127f42dca9de82fb58b1/h/a/havaianas_top_black_flip_flop.jpg', 
  category_id: 1}
)
Item.create(
  {name: 'T-Shirt', price: 10, 
  image_url: 'https://shirtsofcotton.com/en/media/catalog/product/cache/10/image/1200x1200/9df78eab33525d08d6e5fb8d27136e95/s/h/shirtsofcotton-t-shirt-soc-08-front-1200px_1.jpg', 
  category_id: 2}
)
Item.create(
  {name: 'Yoga trousers', price: 25, 
  image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8EjXO79fTxdml2CR8-14JFwx2h2GfHVb462bDHqHk7AakC9Sfag', 
  category_id: 2}
)
Item.create(
  {name: 'Short short', price: 15, 
  image_url: 'https://contents.mediadecathlon.com/p834648/2000x2000/sq/girls_pink_athletic_shorts_domyos_by_decathlon_8297996_834648.jpg?k=fa42cf870f8378c2608ece4f7ac10512', 
  category_id: 2}
)
Item.create(
  {name: 'Hockey stick', price: 125, 
  image_url: 'https://img.inlinewarehouse.com/watermark/rs.php?path=B1XMC7-1.jpg&nw=300', 
  category_id: 3}
)
Item.create(
  {name: 'Bicycle', price: 500, 
  image_url: 'https://cdn.shopify.com/s/files/1/0589/3437/products/state_bicycle_co_matte_teal_beorn_fixie_1_1024x1024_7645d274-b909-4b3f-abbb-dfe37afe056e_1024x1024.jpg?v=1484685394',
  category_id: 3}
)
Item.create(
  {name: 'Bumbbells', price: 60, 
  image_url: 'https://i5.walmartimages.com/asr/a09fa18a-875b-4717-9001-a00851140c1f_1.af8d85594df7e4d529aa87529b6cfe17.jpeg', 
  category_id: 3}
)
Item.create(
  {name: 'Diapers', price: 59, 
  image_url: 'https://cdn.shopify.com/s/files/1/0693/1689/products/product-diaper-nb_2048x_2x_7a90215f-2476-4b41-9359-ea043d1d9a79_1024x1024.jpg?v=1493770251', 
  category_id:4}
)
Item.create(
  {name: 'Cough Syrup', price: 6, 
  image_url: 'https://4.imimg.com/data4/EQ/DM/MY-33400885/cough-medicine-500x500.jpg', 
  category_id:4}
)
Item.create(
  {name: 'Metafen', price: 5, 
  image_url: 'https://cdn.shopify.com/s/files/1/1090/0392/products/METAFEN_x_20_tablets_ibuprofen_and_paracetamol_painkiller_spo_spo_1024x1024.jpg?v=1509204823', 
  category_id:4}
)
Item.create(
  {name: 'Bunny Bed', price: 15, 
  image_url: 'https://cdn.shopify.com/s/files/1/2161/3037/products/product-image-498537797_9267670d-4459-434d-8d54-a97ed1729d63_480x480.jpg?v=1539685579', 
  category_id:5}
)
Item.create(
  {name: 'Cat Toys', price: 3, 
  image_url: 'https://www.happydogplace.com/dogs/images/products/2395.jpg', 
  category_id:5}
)
Item.create(
  {name: 'Dog toy', price: 4, 
  image_url: 'https://target.scene7.com/is/image/Target/GUEST_47ca458f-399f-49dd-b27b-e2ef75ff13c9?wid=488&hei=488&fmt=pjpeg', 
  category_id:5}
)
Item.create(
  {name: 'Sofa', price: 1000, 
  image_url: 'https://www.ikea.com/gb/en/images/products/friheten-corner-sofa-bed-with-storage-skiftebo-dark-grey__0175610_pe328883_s3.jpg', 
  category_id:6}
)
Item.create(
  {name: 'Table & chair', price: 100, 
  image_url: 'https://www.ikea.com/gb/en/images/products/jokkmokk-table-and-4-chairs-antique-stain__0122105_pe278490_s4.jpg', 
  category_id:6}
)
Item.create(
  {name: 'Fridge', price: 1700, 
  image_url: 'https://brain-images-ssl.cdn.dixons.com/2/5/10147252/u_10147252.jpg', 
  category_id:6}
)
Item.create(
  {name: 'PS4', price: 600, 
  image_url: 'https://www.valuewalk.com/wp-content/uploads/2016/09/PlayStation-4-Pro-1.jpg', 
  category_id:7}
)
Item.create(
  {name: 'Nitendo 64', price: 300, 
  image_url: 'https://www.gamesmen.com.au/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nintendo_64_charcoal_black_console_pre-owned_5_.jpg', 
  category_id:7}
)
Item.create(
  {name: 'Game Boy', price: 50, 
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Game-Boy-FL.jpg/215px-Game-Boy-FL.jpg', 
  category_id:7}
)
Item.create(
  {name: 'PopCorn', price: 5, 
  image_url: 'https://www.mylittleday.com/img/230/160051/max/p/-8-popcorn-boxes.jpg', 
  category_id:8}
)
Item.create(
  {name: 'Disco Ball', price: 25, 
  image_url: 'https://cdn7.bigcommerce.com/s-jlma9z/images/stencil/1280x1280/products/2987/12509/12_inch_disco_ball-1__60078.1501616435.1280.1280__51133.1525124567.jpg?c=2&imbypass=on', 
  category_id:8}
)
Item.create(
  {name: 'Pac Man Arcade Machine', price: 2000, 
  image_url: 'https://d4o467mn6x2sg.cloudfront.net/media/catalog/product/cache/1/thumbnail/700x700/040ec09b1e35df139433887a97daa66f/y/e/yellow_pac_man_complete_1.jpg', 
  category_id:8}
)
SoldItem.create({item_id: 1, transaktion_id: 1})
SoldItem.create({item_id: 2, transaktion_id: 2})
SoldItem.create({item_id: 3, transaktion_id: 2})
SoldItem.create({item_id: 4, transaktion_id: 3})
SoldItem.create({item_id: 5, transaktion_id: 3})
SoldItem.create({item_id: 6, transaktion_id: 3})
SoldItem.create({item_id: 7, transaktion_id: 4})
SoldItem.create({item_id: 8, transaktion_id: 4})
SoldItem.create({item_id: 9, transaktion_id: 4})




