# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Item.delete_all
Outfit.delete_all


Outfit.create([
  {name: 'casual friday', tag: 'casual'},
  {name: 'serious business', tag: 'dressy'},
  {name: 'weekend', tag: 'casual'}
  ])

Item.create([
  {name: 'favorite grey button-down', brand: 'louis vutton', category: 'shirt'},
  {name: 'blue distressed jeans', brand: 'seven', category: 'pants'}
])

# User.create({first_name: 'John', last_name: 'Smith', password_digest: '1', username: 'johnsmithuser', email: 'johnsmithuser@gmail.com' })

p Item.all
p User.all
p Outfit.all
