Shorty.destroy_all
User.destroy_all
Booking.destroy_all

clones = ["Black-tie", "Business", "Casual", "Party"]

5.times do
  User.create!(email: Faker::Internet.email,
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               password: "123456")
end

User.all.each do |user|
  unless user == User.last
    3.times do
      Shorty.create!(height: rand(150..175),
                     name: "#{clones[rand(0..3)]} #{user.first_name}",
                     price: rand(100..500),
                     user: user,
                     photo_url: "https://i.pravatar.cc/1000")
    end
  end
end

Shorty.all.each do |shorty|
  other_users = User.where("id != :id", id: shorty.user_id)
  unless shorty == Shorty.first
    2.times do
      Booking.create!(shorty: shorty,
                      user: other_users.sample,
                      start_date: Faker::Date.between(from: 1.days.from_now, to: 2.days.from_now),
                      end_date: Faker::Date.between(from: 3.days.from_now, to: 4.days.from_now),
                      status: [0, 1].sample)
    end
  end
end
