puts "Seeds are being sown..."

Shorty.destroy_all
User.destroy_all
Booking.destroy_all

clones = ["Black-tie", "Business", "Casual", "Party"]

User.create!(email: 'yannbouhadana@lewagon.com',
             first_name: 'Yann',
             last_name: 'Bouhadana',
             password: '123456',
             photo_url: 'https://avatars.githubusercontent.com/u/100429284?v=4')

User.create!(email: 'kimcoquilla@lewagon.com',
             first_name: 'Kim',
             last_name: 'Coquilla',
             password: '123456',
             photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649080145/tgmtvniwcj02nbwgf41c.jpg')

User.create!(email: 'jamescampbell@lewagon.com',
             first_name: 'James',
             last_name: 'Campbell',
             password: '123456',
             photo_url: 'https://avatars.githubusercontent.com/u/101915976?v=4')

User.create!(email: 'jorgealvarez@lewagon.com',
             first_name: 'Jorge',
             last_name: 'Alvarez',
             password: '123456',
             photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649158028/a6jnbozctxvloomxuspj.jpg')

5.times do
  User.create!(email: Faker::Internet.email,
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               password: "123456",
               photo_url: "https://i.pravatar.cc/1000")
end

User.all.each do |user|
  unless user == User.last
    3.times do
      Shorty.create!(height: rand(135..165),
                     name: "#{clones[rand(0..3)]} #{user.first_name}",
                     price: rand(100..500),
                     user: user,
                     photo_url: "https://i.pravatar.cc/1000")
    end
  end
end

# Shorty.all.each do |shorty|
#   other_users = User.where("id != :id", id: shorty.user_id)
#   unless shorty == Shorty.first
#     2.times do
#       start_date = Faker::Date.between(from: 1.days.from_now, to: 15.days.from_now)
#       Booking.create!(shorty: shorty,
#                       user: other_users.sample,
#                       start_date: start_date,
#                       end_date: start_date + rand(0..2),
#                       status: [0, 1].sample)
#     end
#   end
# end
