# frozen_string_literal: true

Product.destroy_all
Category.destroy_all
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.create(name: 'Jerseys')
Category.create(name: 'Sticks')
Category.create(name: 'Gloves')
Category.create(name: 'Skates')
Category.create(name: 'Helmets')

Product.create(name: 'Bauer Glove', description: 'Black Bauer Glove Size Large', price: 65)
Product.create(name: 'CCM Glove', description: 'Black CCM Glove Size Medium', price: 44)
Product.create(name: 'Bauer Skates', description: 'Black Bauer Skates Size 9', price: 99)
Product.create(name: 'CCM Skates', description: 'Black CCM Skates Size 11', price: 119)
Product.create(name: 'White Jersey', description: 'White Practice Jersey Size Large', price: 19)
Product.create(name: 'Red Jersey', description: 'Red Practice Jersey Size Medium', price: 15)
Product.create(name: 'Easton Helmet', description: 'Black Easton Helmet Size Large', price: 79)
Product.create(name: 'CCM Helmet', description: 'Black CCM Helmet Size Large', price: 89)
Product.create(name: 'Reebok Stick', description: 'Reebok 20K Senior Hockey Stick', price: 129)
Product.create(name: 'Sherwood Stick', description: 'Sherwood Junior Hockey Stick', price: 179)

puts("Created #{Product.count} Products")
puts("Created #{Category.count} Products")
