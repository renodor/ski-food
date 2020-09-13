# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p 'Destroy all categories'
Category.destroy_all
p '----------> done'

p 'Destroy all dishes'
Dish.destroy_all
p '----------> done'


p 'Create Categories'
Category.create!(name: 'food')
Category.create!(name: 'drinks')
p "----------> #{Category.count} categories created"

p 'Create Dishes'
dish = Dish.new(name: 'burger', price: 8)
dish.category = Category.first
dish.save

dish = Dish.new(name: 'cheese mountain', price: 10)
dish.category = Category.first
dish.save

dish = Dish.new(name: 'americain steack', price: 10)
dish.category = Category.first
dish.save

Dish.new(name: 'sandwitch chicken', price: 10)
p "----------> #{Dish.count} dishes created"
