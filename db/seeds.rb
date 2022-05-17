# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shorty.destroy_all
User.destroy_all
Booking.destroy_all

5.times do
  User.create!(email:Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456")
end

User.all.each do |user|
  unless user == User.last
    3.times do
      Shorty.create!(height: rand(150..175), name: "Black-tie #{user.first_name}", price: rand(100..500), user_id: user.id)
    end
  end
end
