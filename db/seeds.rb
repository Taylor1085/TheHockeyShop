# frozen_string_literal: true

Product.destroy_all

Category.destroy_all

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

jerseys = Category.create(name: 'Jerseys')
sticks = Category.create(name: 'Sticks')
gloves = Category.create(name: 'Gloves')
skates = Category.create(name: 'Skates')
helmets = Category.create(name: 'Helmets')

gloves.products.create(name: 'Bauer Glove', description: 'Black Bauer Glove Size Large', price: 65)
gloves.products.create(name: 'CCM Glove', description: 'Black CCM Glove Size Medium', price: 44)
skates.products.create(name: 'Bauer Skates', description: 'Black Bauer Skates Size 9', price: 99)
skates.products.create(name: 'CCM Skates', description: 'Black CCM Skates Size 11', price: 119)
jerseys.products.create(name: 'White Jersey', description: 'White Practice Jersey Size Large', price: 19)
jerseys.products.create(name: 'Red Jersey', description: 'Red Practice Jersey Size Medium', price: 15)
helmets.products.create(name: 'Easton Helmet', description: 'Black Easton Helmet Size Large', price: 79)
helmets.products.create(name: 'CCM Helmet', description: 'Black CCM Helmet Size Large', price: 89)
sticks.products.create(name: 'Reebok Stick', description: 'Reebok 20K Senior Hockey Stick', price: 129)
sticks.products.create(name: 'Sherwood Stick', description: 'Sherwood Junior Hockey Stick', price: 179)

puts("Created #{Product.count} Products")
puts("Created #{Category.count} Categories")
