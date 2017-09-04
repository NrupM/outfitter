# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.delete_all
Outfit.delete_all

Outfit.create([
  {name: 'casual friday', tag: 'casual'},
  {name: 'serious business', tag: 'dressy'},
  {name: 'weekend', tag: 'casual'}
])

casual_friday_items = Item.create([
  {name: 'favorite grey button-down', brand: 'Louis Vutton', category: 'shirt', image: File.new("app/assets/images/pants_black_slacks.jpeg")},
  {name: 'blue distressed jeans', brand: 'seven', category: 'pants'},
  {name: 'brown loafers', brand: 'Aldo', category: 'shoes'}
])

serious_business_items = Item.create([
  {name: 'white dress shirt', brand: 'Hugo Boss', category: 'shirt'},
  {name: 'black slacks', brand: 'Armani', category: 'pants'},
  {name: 'black oxfords', brand: 'Aldo', category: 'shoes'}
])

weekend = Item.create([
  {name: 'green t-shirt', brand: 'Banana Republic', category: 'shirt'},
  {name: 'light blue jeans', brand: "Levi's", category: 'pants'},
  {name: 'favorite sneakers', brand: 'New Balance', category: 'shoes'}
])

outfit = Outfit.find_by_id(1)
casual_friday_items.each do |item|
  outfit.items << item
end

outfit = Outfit.find_by_id(2)
serious_business_items.each do |item|
  outfit.items << item
end

outfit = Outfit.find_by_id(3)
weekend.each do |item|
  outfit.items << item
end




# User.create({first_name: 'John', last_name: 'Smith', password_digest: '1', username: 'johnsmithuser', email: 'johnsmithuser@gmail.com' })

# p User.all
p Item.all
p Outfit.all
