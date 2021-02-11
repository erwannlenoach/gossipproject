# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 
     City.create(
         name: Faker::Address.city, 
         zip_code: Faker::Address.zip)
end 

10.times do 
     User.create(
         first_name: Faker::Name.first_name, 
         last_name: Faker::Name.last_name, 
         email: Faker::Internet.email, 
         age: Faker::Number.number(digits: 2), 
         description: Faker::Lorem.sentence(word_count: 3),
         password_digest: Faker::String.random(length: 4),
         city_id: City.all.sample.id
         )
end 

20.times do 
     Gossip.create(
         title: Faker::TvShows::HowIMetYourMother.catch_phrase , 
         content: Faker::TvShows::HowIMetYourMother.quote,
         user_id: User.all.sample.id
         )
end 

