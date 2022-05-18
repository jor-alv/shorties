puts "Seeds are being sown..."

Shorty.destroy_all
User.destroy_all
Booking.destroy_all

clones = ["Black-tie", "Business", "Casual", "Party"]

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
#       # Booking.create!(shorty: shorty,
#       #                 user: other_users.sample,
#       #                 start_date: start_date,
#       #                 end_date: start_date + rand(0..2),
#       #                 status: [0, 1].sample)
#     end
#   end
# end
