# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

15.times do
	city = City.create!(city_name: Faker::Address.city)
end

20.times do
	dog = Dog.create!(name: Faker::Creature::Dog.name, city_id: City.all.sample.id)
end

25.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.name, age: rand(18..80), city_id: City.all.sample.id)
end

30.times do
   stroll = Stroll.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 100), city_id: City.all.sample.id, dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id)
end
