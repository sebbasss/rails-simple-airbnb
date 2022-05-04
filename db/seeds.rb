# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all

random_price = [122, 323, 4312, 1212]
random_guests = [1, 2, 3, 4, 5, 6, 7]
5.times do
  Flat.create(name: Faker::FunnyName.name, address: Faker::Address.street_address,
              description: Faker::Lorem.paragraph(sentence_count: 2), number_of_guests: random_guests.sample,
              price_per_night: random_price.sample)
end
