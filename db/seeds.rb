# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Product.create(:name => "Outdoor backpack", :description => "Backpack perfect for travelling outdoor. Light and waterproof make your travel easier. It is fashionable and also classy at the same time. Perfect for every gender. ", :image_url => "https://s-media-cache-ak0.pinimg.com/736x/fd/90/e9/fd90e9ac8d826187fbcc36341d69812f.jpg", :colour => "greyish black", :price => "150€")
Product.create(:name => "Hiking outfits ", :description => "Hiking outfit for sale . Fashionable, light and easy. Keeps you warm and also protected from the sun. Jacket is waterproof and also have thick quality. ", :image_url => "https://s-media-cache-ak0.pinimg.com/736x/77/29/2e/77292eaa73a92fe498bb40d450ac5a91.jpg ", :coloor => "Blue", :price => "300€")
Product.create(:name => "Danner Ridge Boot ", :description => "Danner Ridge Boot good quality materialthat protect your foot from any dangerous items when walking outdoors. Easy to wear and light weight too. Help you walk so much better. Popular demand and in season.", :image_url => "https://s-media-cache-ak0.pinimg.com/736x/2a/1b/03/2a1b03dba91f4f88cacc7bb3734e7c22.jpg", :colour => "brown ", :price => " 290€")
