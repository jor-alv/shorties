puts "Seeds are being sown..."

# DESTROYING PREVIOUS SEEDS
Booking.destroy_all
Shorty.destroy_all
User.destroy_all

# CREATING NEW SEEDS

# USER SEEDS

# 1. john_littlewood
User.create!(email: 'johnlittlewood@lewagon.com',
             first_name: 'John',
             last_name: 'Littlewood',
             password: '123456',
             photo_url: 'https://theartsdesk.com/sites/default/files/styles/mast_image_landscape/public/mastimages/Screen%20shot%202012-11-24%20at%2012.25.11.png?itok=KPLvDz1f')

# john_littlewood = User.last

# 2. danny_devito
# User.create!(email: 'dannydevito@lewagon.com',
#              first_name: 'Danny',
#              last_name: 'DeVito',
#              password: '123456',
#              photo_url: 'https://cdn.vox-cdn.com/thumbor/gnPngn18g1kI_jezInce3P39J9c=/0x0:3200x1800/2070x1164/filters:focal(1344x644:1856x1156):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/65316416/danny_devito.0.jpg')

# danny_devito = User.last

# 3. yann_bouhadana
User.create!(email: 'yannbouhadana@lewagon.com',
             first_name: 'Yann',
             last_name: 'Bouhadana',
             password: '123456',
             photo_url: 'https://avatars.githubusercontent.com/u/100429284?v=4')

yann_bouhadana = User.last

# 4. kim_coquilla
User.create!(email: 'kimcoquilla@lewagon.com',
             first_name: 'Kim',
             last_name: 'Coquilla',
             password: '123456',
             photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649080145/tgmtvniwcj02nbwgf41c.jpg')

kim_coquilla = User.last

# 5. james_campbell
User.create!(email: 'jamescampbell@lewagon.com',
             first_name: 'James',
             last_name: 'Campbell',
             password: '123456',
             photo_url: 'https://avatars.githubusercontent.com/u/101915976?v=4')

james_campbell = User.last

# 6. jorge_alvarez
User.create!(email: 'jorgealvarez@lewagon.com',
             first_name: 'Jorge',
             last_name: 'Alvarez',
             password: '123456',
             photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649158028/a6jnbozctxvloomxuspj.jpg')

jorge_alvarez = User.last

#
# SHORTY SEEDS

# 1. black_tie_kevin_hart
Shorty.create!(height: 157,
               name: "Black-Tie Kevin Hart",
               description: "",
               price: 350,
               user: User.find_by(first_name: "Kim"),
               photo_url: "https://i.pinimg.com/originals/58/9a/77/589a779c7921c6a3a3a29a6dc3d691b5.jpg",
               address: "1312 Papineau Avenue, Montreal, Quebec, Canada")

black_tie_kevin_hart = Shorty.last

# 2. funny_kevin_hart
Shorty.create!(height: 157,
               name: "Funny Kevin Hart",
               description: "",
               price: 350,
               user: User.find_by(first_name: "Kim"),
               photo_url: "https://i.ytimg.com/vi/BXwKPbI2Wk0/maxresdefault.jpg",
               address: "3452 Sherbrooke Ouest, Montreal, Quebec, Canada")

business_kevin_hart = Shorty.last

# 3. waterloo_napoleon_bonaparte
Shorty.create!(height: 157,
               name: "Waterloo Napoleon Bonaparte",
               description: "",
               price: 400,
               user: User.find_by(first_name: "Jorge"),
               photo_url: "http://www.celebheights.org/wp-content/uploads/2014/11/Napoleon-Bonaparte.jpg",
               address: "5333 Casgrain, Montreal, Quebec, Canada")

waterloo_napoleon_bonaparte = Shorty.last

# 4. emperor_napoleon_bonaparte
Shorty.create!(height: 157,
               name: "Emperor Napoleon Bonaparte",
               description: "",
               price: 900,
               user: User.find_by(first_name: "Jorge"),
               photo_url: "https://www.biography.com/.image/t_share/MTc5OTkzMzI0ODg5ODQzMDMy/gettyimages-544266826.jpg",
               address: "3800 Queen Mary Road, Montreal, Quebec, Canada")

emperor_napoleon_bonaparte = Shorty.last

# 5. black_tie_danny_devito
Shorty.create!(height: 147,
               name: "Black-Tie Danny DeVito",
               description: "Nice to meet you, my name is black-tie Danny Devito. I would be very pleased to help you so that the next stage of your life comes with a ladder.",
               price: 500,
               user: User.find_by(first_name: "James"),
               photo_url: "https://st.depositphotos.com/1814084/1643/i/450/depositphotos_16437743-stock-photo-danny-devito.jpg",
               address: "1772 rue Ontario Ouest, Montreal, Quebec, Canada")

black_tie_danny_devito = Shorty.last

# 6. business_danny_devito
Shorty.create!(height: 147,
               name: "Business Danny DeVito",
               description: "Hello everyone, business Danny Devito here! Tired of being the shortest person at your business meetings? Well no more! I will ask you questions such as “hows the weather up there?” and assist you to your business meetings so that you look taller then a sky-scraper!",
               price: 500,
               user: User.find_by(first_name: "James"),
               photo_url: "https://external-preview.redd.it/YL0Txrt2JzvJQPJ40hJ8bIIOjZju5BrfbGPcuRcuXNY.jpg?auto=webp&s=e4ce15689898818d927948cde201d5a3cfb3173e",
               address: "279 Duke, Montreal, Quebec, Canada")

business_danny_devito = Shorty.last

# 7. animal_danny_devito
Shorty.create!(height: 147,
               name: "Animal Danny DeVito",
               description: "Hello there, I'm animal Danny Devito!",
               price: 500,
               user: User.find_by(first_name: "James"),
               photo_url: "https://i.pinimg.com/originals/d6/f9/99/d6f99926e1ee90f3cb541d303822b974.jpg",
               address: "1689 rue de la Gauchetière, Montreal, Quebec, Canada")

animal_danny_devito = Shorty.last

#
# BOOKING SEEDS

# 1.
Booking.create!(shorty_id: emperor_napoleon_bonaparte.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 5, 26),
                end_date: Time.new(2022, 5, 27),
                status: 0)

# 2.
Booking.create!(shorty_id: waterloo_napoleon_bonaparte.id,
                user_id: james_campbell.id,
                start_date: Time.new(2022, 5, 23),
                end_date: Time.new(2022, 5, 24),
                status: 1)

# 3.
Booking.create!(shorty_id: emperor_napoleon_bonaparte.id,
                user_id: yann_bouhadana.id,
                start_date: Time.new(2022, 5, 13),
                end_date: Time.new(2022, 5, 14),
                status: 3)

# 4.
Booking.create!(shorty_id: waterloo_napoleon_bonaparte.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 4, 7),
                end_date: Time.new(2022, 4, 8),
                status: 3)

# 5.
Booking.create!(shorty_id: emperor_napoleon_bonaparte.id,
                user_id: james_campbell.id,
                start_date: Time.new(2022, 3, 21),
                end_date: Time.new(2022, 3, 22),
                status: 3)

# 6.
Booking.create!(shorty_id: funny_kevin_hart.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 5, 28),
                end_date: Time.new(2022, 5, 29),
                status: 0)

# 7.
Booking.create!(shorty_id: black_tie_kevin_hart.id,
                user_id: yann_bouhadana.id,
                start_date: Time.new(2022, 5, 21),
                end_date: Time.new(2022, 5, 22),
                status: 1)

# 8.
Booking.create!(shorty_id: business_kevin_hart.id,
                user_id: james_campbell.id,
                start_date: Time.new(2022, 5, 11),
                end_date: Time.new(2022, 5, 12),
                status: 3)

# 9.
Booking.create!(shorty_id: black_tie_kevin_hart.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 3, 11),
                end_date: Time.new(2022, 3, 12),
                status: 3)

# 10.
Booking.create!(shorty_id: business_kevin_hart.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 4, 5),
                end_date: Time.new(2022, 4, 6),
                status: 3)

# 11.
Booking.create!(shorty_id: business_danny_devito.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 5, 29),
                end_date: Time.new(2022, 5, 30),
                status: 0)

# 12.
Booking.create!(shorty_id: animal_danny_devito.id,
                user_id: yann_bouhadana.id,
                start_date: Time.new(2022, 5, 24),
                end_date: Time.new(2022, 5, 25),
                status: 1)

# 13.
Booking.create!(shorty_id: business_danny_devito.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 5, 16),
                end_date: Time.new(2022, 5, 17),
                status: 3)

# 14.
Booking.create!(shorty_id: black_tie_danny_devito.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 4, 22),
                end_date: Time.new(2022, 4, 23),
                status: 3)

# 15.
Booking.create!(shorty_id: business_danny_devito.id,
                user_id: yann_bouhadana.id,
                start_date: Time.new(2022, 3, 18),
                end_date: Time.new(2022, 3, 19),
                status: 3)

# 5.times do
#   User.create!(email: Faker::Internet.email,
#                first_name: Faker::Name.first_name,
#                last_name: Faker::Name.last_name,
#                password: "123456",
#                photo_url: "https://i.pravatar.cc/1000")
# end

# User.all.each do |user|
#   unless user == User.last
#     3.times do
#       Shorty.create!(height: rand(135..165),
#                      name: "#{clones[rand(0..3)]} #{user.first_name}",
#                      price: rand(100..500),
#                      user: user,
#                      photo_url: "https://i.pravatar.cc/1000")
#     end
#   end
# end

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
