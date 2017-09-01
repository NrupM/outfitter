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

User.create({first_name: 'John', last_name: 'Smith', password_digest: '1', username: 'johnsmithuser', email: 'johnsmithuser@gmail.com' })
Item.create({name: 'favorite sweatshirt', brand: 'louis', category: 'shirt'})
Outfit.create({name: 'casual friday', tag: 'casual'})
p Item.all
p User.all
p Outfit.all
