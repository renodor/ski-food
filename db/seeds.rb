require 'open-uri'

p 'Destroy all dishes'
Dish.destroy_all
p '----------> done'

p 'Destroy all categories'
Category.destroy_all
p '----------> done'

p 'Create Categories'
cheesemountain = Category.create!(name: 'cheesemountain')
burgers = Category.create!(name: 'burgers')
paninis = Category.create!(name: 'paninis')
americains = Category.create!(name: 'americains')
sandwitches = Category.create!(name: 'sandiwtches')

p "----------> #{Category.count} categories created"

# rubocop:disable Layout/LineLength
description = 'Lorem, ipsum, dolor sit amet consectetur adipisicing elit. Labore ipsum ducimus natus voluptatibus qui. Ducimus earum sed nesciunt voluptas deserunt soluta blanditiis ab, ipsa sunt consectetur est illo quo, porro!'
# rubocop:enable Layout/LineLength

p 'Create Dishes'

2.times do |n|
  dish = Dish.new(name: "cheesemountain #{n + 1}", price: 11.5)
  dish.ingredients = ['steak (100gr)', 'raclette', 'rösti', 'salade', 'tomate', 'oignon']
  dish.category = cheesemountain
  dish.description = description
  file = URI.open('https://res.cloudinary.com/skifood/image/upload/v1600029704/seeds/burger3_l1zfp3.jpg')
  dish.photo.attach(io: file, filename: "#{dish.name}.jpg", content_type: 'image/jpg')
  dish.save!

  dish = Dish.new(name: "chickenmountain #{n + 1}", price: 11.5)
  dish.ingredients = %w[poulet raclette rösti salade tomate oignon]
  dish.category = cheesemountain
  dish.description = description
  file = URI.open('https://res.cloudinary.com/skifood/image/upload/v1600029704/seeds/burger2_ppnxma.jpg')
  dish.photo.attach(io: file, filename: "#{dish.name}.jpg", content_type: 'image/jpg')
  dish.save!
end

4.times do |n|
  dish = Dish.new(name: "burger #{n + 1}", price: 9.5)
  dish.ingredients = ['steak (100gr)', 'salade', 'tomate', 'oignon']
  dish.category = burgers
  dish.description = description
  file = URI.open('https://res.cloudinary.com/skifood/image/upload/v1600029704/seeds/burger_ltovel.jpg')
  dish.photo.attach(io: file, filename: "#{dish.name}.jpg", content_type: 'image/jpg')
  dish.save!
end

4.times do |n|
  dish = Dish.new(name: "americain #{n + 1}", price: 10)
  dish.ingredients = ['steak (100gr)', 'salade', 'tomate', 'oignon', 'frites']
  dish.category = americains
  dish.description = description
  file = URI.open('https://res.cloudinary.com/skifood/image/upload/v1600029705/seeds/panini2_eclzkp.png')
  dish.photo.attach(io: file, filename: "#{dish.name}.png", content_type: 'image/png')
  dish.save!
end

4.times do |n|
  dish = Dish.new(name: "panini #{n + 1}", price: 8.5)
  dish.ingredients = %w[tomate mozza pesto]
  dish.category = paninis
  dish.description = description
  file = URI.open('https://res.cloudinary.com/skifood/image/upload/v1600029703/seeds/panini_mi7qaq.jpg')
  dish.photo.attach(io: file, filename: "#{dish.name}.jpg", content_type: 'image/jpg')
  dish.save!
end

2.times do |n|
  dish = Dish.new(name: "fish and chips #{n + 1}", price: 10)
  dish.category = sandwitches
  file = URI.open('https://res.cloudinary.com/skifood/image/upload/v1600029703/seeds/fish-and-chips_e6k72t.jpg')
  dish.photo.attach(io: file, filename: "#{dish.name}.jpg", content_type: 'image/jpg')
  dish.save!

  dish = Dish.new(name: "hot dog #{n + 1}", price: 9)
  dish.category = sandwitches
  file = URI.open('https://res.cloudinary.com/skifood/image/upload/v1600029703/seeds/hot-dog_bbptvk.jpg')
  dish.photo.attach(io: file, filename: "#{dish.name}.jpg", content_type: 'image/jpg')
  dish.save!
end

p "----------> #{Dish.count} dishes created"
