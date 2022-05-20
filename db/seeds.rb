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

john_littlewood = User.last

# 2. danny_devito
User.create!(email: 'dannydevito@lewagon.com',
             first_name: 'Danny',
             last_name: 'DeVito',
             password: '123456',
             photo_url: 'https://cdn.vox-cdn.com/thumbor/gnPngn18g1kI_jezInce3P39J9c=/0x0:3200x1800/2070x1164/filters:focal(1344x644:1856x1156):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/65316416/danny_devito.0.jpg')

danny_devito = User.last

# 3. kevin_hart
User.create!(email: 'kevin_hart@lewagon.com',
             first_name: 'Kevin',
             last_name: 'Hart',
             password: '123456',
             photo_url: 'https://financerewind.com/wp-content/uploads/2020/09/kevin-e1599502332249.jpg')

kevin_hart = User.last

# 4. lionel_messi
User.create!(email: 'lionel_messi@lewagon.com',
             first_name: 'Lionel',
             last_name: 'Messi',
             password: '123456',
             photo_url: 'https://sportslibro.com/football/wp-content/uploads/2020/03/323w.jpg')

lionel_messi = User.last

# 5. paul_lanza
User.create!(email: 'paul_lanza@lewagon.com',
             first_name: 'Paul',
             last_name: 'Lanza',
             password: '123456',
             photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649113462/whvqgnpdwxrgvpkeufb1.jpg')

paul_lanza = User.last

# 6. yann_bouhadana
User.create!(email: 'yannbouhadana@lewagon.com',
             first_name: 'Yann',
             last_name: 'Bouhadana',
             password: '123456',
             photo_url: 'https://avatars.githubusercontent.com/u/100429284?v=4')

yann_bouhadana = User.last

# 7. kim_coquilla
User.create!(email: 'kimcoquilla@lewagon.com',
             first_name: 'Kim',
             last_name: 'Coquilla',
             password: '123456',
             photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649080145/tgmtvniwcj02nbwgf41c.jpg')

kim_coquilla = User.last

# 8. james_campbell
User.create!(email: 'jamescampbell@lewagon.com',
             first_name: 'James',
             last_name: 'Campbell',
             password: '123456',
             photo_url: 'https://avatars.githubusercontent.com/u/101915976?v=4')

james_campbell = User.last

# 9. jorge_alvarez
User.create!(email: 'jorgealvarez@lewagon.com',
             first_name: 'Jorge',
             last_name: 'Alvarez',
             password: '123456',
             photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649158028/a6jnbozctxvloomxuspj.jpg')

jorge_alvarez = User.last

#
# SHORTY SEEDS

# 1. wingman_kevin_hart
Shorty.create!(height: 157,
               name: "Wingman Kevin Hart",
               description: "",
               features: "",
               price: 351,
               user: User.find_by(first_name: "Kevin"),
               photo_url: "https://www.etonline.com/sites/default/files/styles/max_1280x720/public/images/2016-06/KEVINHARTFIANCETALKS_1280.jpg?itok=rXMZLDBP",
               address: "4261 53e Rue, Montreal, Quebec, Canada")

wingman_kevin_hart = Shorty.last

# 2. wingman_lionel_messi
Shorty.create!(height: 169,
               name: "Wingman Lionel Messi",
               description: "",
               features: "",
               price: 783,
               user: User.find_by(first_name: "Lionel"),
               photo_url: "https://healthyceleb.com/wp-content/uploads/2013/03/Lionel-Messi-Weight.jpg",
               address: "3800 Queen Mary Road, Montreal, Quebec, Canada")

wingman_lionel_messi = Shorty.last

# 3. wingman_danny_devito
Shorty.create!(height: 147,
               name: "Wingman Danny DeVito",
               description: "Nice to meet you, my name is black-tie Danny Devito. I would be very pleased to help you so that the next stage of your life comes with a ladder.",
               features: "",
               price: 631,
               user: User.find_by(first_name: "Danny"),
               photo_url: "https://album.mediaset.es/eimg/2016/12/25/kwOFHLdQlPNMEAzqbbirL1.jpg?w=1024",
               address: "4560 Promenade Paton, Laval, Quebec, Canada")

wingman_danny_devito = Shorty.last

# 4. wingman_yann_bouhadana
Shorty.create!(height: 147,
               name: "Wingman Yann Bouhadana",
               description: "Need a shorty for your party? Look no further. Wingman Yann will be your plus one to whatever event you’re attending and provide an appealing personality with an uncanny disposition towards making you seem like the tallest, most charming individual at the party.",
               features: "A wingman is a friend that you can bring to a bar or party in order to find companions more easily. They will also make you look definitively taller! The wingman is useful in case you don't already know a single person that is interested in hanging out or if you just need someone to gas you up at a party. They will come with you to party and make you feel like you're the number one superstar there."\
                         "While you are talking to the girl you are interested in, the wingman will take care of the other girls. The wingman could be a single man, however it could be women, also known as wingwoman or winggirl. If you cannot find any friend interested in being your wingman, you may find one close to your city on shortFriends! Gone are the days of feeling short.",
               price: 86,
               user: User.find_by(first_name: "Yann"),
               photo_url: "",
               address: "5333 Casgrain, Montreal, Quebec, Canada")

wingman_yann_bouhadana = Shorty.last

# 5. top_scorer_lionel_messi
Shorty.create!(height: 169,
               name: "Top Scorer Lionel Messi",
               description: "",
               features: "",
               price: 939,
               user: User.find_by(first_name: "Lionel"),
               photo_url: "https://wallpapersdsc.net/wp-content/uploads/2015/10/Lionel_Messi_35.jpg",
               address: "56 Rue Louis Lepage, Terrebonne, Canada")

top_scorer_lionel_messi = Shorty.last

# 6. smiley_danny_devito
Shorty.create!(height: 147,
               name: "Smiley Danny DeVito",
               description: "Yo! I'm happy smiley Danny Devito!",
               features: "",
               price: 289,
               user: User.find_by(first_name: "Danny"),
               photo_url: "https://philadelphia.cbslocal.com/wp-content/uploads/sites/15116066/2018/04/gettyimages-458783786.jpg?w=1500",
               address: "1689 rue de la Gauchetière, Montreal, Quebec, Canada")

smiley_danny_devito = Shorty.last

# 7. shirtless_kevin_hart
Shorty.create!(height: 157,
               name: "Shirtless Kevin Hart",
               description: "",
               features: "",
               price: 712,
               user: User.find_by(first_name: "Kevin"),
               photo_url: "https://i.pinimg.com/736x/fd/8d/30/fd8d306d5abe98a7790e3c731c0770e7.jpg",
               address: "Kahnawake Beach, Canada")

shirtless_kevin_hart = Shorty.last

# 8. drunkard_lionel_messi
Shorty.create!(height: 169,
               name: "Drunkard Lionel Messi",
               description: "",
               features: "",
               price: 17,
               user: User.find_by(first_name: "Lionel"),
               photo_url: "https://sportzcraazy.com/wp-content/uploads/2019/04/drunk-messi.jpg",
               address: "200 Rue Pierre Bretonneau, Laval, Quebec, Canada")

drunkard_lionel_messi = Shorty.last

# 9. big_business_danny_devito
Shorty.create!(height: 147,
               name: "Big Business Danny DeVito",
               description: "Hello everyone, business Danny Devito here! Tired of being the shortest person at your business meetings? Well no more! I will ask you questions such as “hows the weather up there?” and assist you to your business meetings so that you look taller then a sky-scraper!",
               features: "",
               price: 854,
               user: User.find_by(first_name: "Danny"),
               photo_url: "https://i.pinimg.com/originals/62/28/4e/62284e8bd5c2a5d72a74390df5c24c35.jpg",
               address: "279 Duke, Montreal, Quebec, Canada")

big_business_danny_devito = Shorty.last

# 10. awesome_yann_bouhadana
Shorty.create!(height: 147,
               name: "Awesome Yann Bouhadana",
               description: "",
               features: "",
               price: 86,
               user: User.find_by(first_name: "Yann"),
               photo_url: "",
               address: "408 Rue Runnymede, Canada")

awesome_yann_bouhadana = Shorty.last

# 11. wierdo_kevin_hart
Shorty.create!(height: 157,
               name: "Wierdo Kevin Hart",
               description: "",
               features: "",
               price: 576,
               user: User.find_by(first_name: "Kevin"),
               photo_url: "https://i2.cdn.turner.com/cnnnext/dam/assets/130702135852-faces-of-kevin-hart-mtv-show-2007-horizontal-large-gallery.jpg",
               address: "2270 Rue Daniel, Longueuil, Quebec, Canada")

wierdo_kevin_hart = Shorty.last

# 10. smelly_paul_lanza
Shorty.create!(height: 147,
               name: "Smelly Paul Lanza",
               description: "",
               features: "",
               price: 86,
               user: User.find_by(first_name: "Paul"),
               photo_url: "https://jasonbgraham.com/wp-content/uploads/2019/01/jasonbgraham-poop-icon.png",
               address: "Hopital Maisonneuve-Rosemont, Canada")

smelly_paul_lanza = Shorty.last

#
# BOOKING SEEDS

# 1.
Booking.create!(shorty_id: wingman_lionel_messi.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 5, 26),
                end_date: Time.new(2022, 5, 27),
                status: 0)

# 2.
Booking.create!(shorty_id: top_scorer_lionel_messi.id,
                user_id: james_campbell.id,
                start_date: Time.new(2022, 5, 23),
                end_date: Time.new(2022, 5, 24),
                status: 1)

# 3.
Booking.create!(shorty_id: wingman_lionel_messi.id,
                user_id: yann_bouhadana.id,
                start_date: Time.new(2022, 5, 13),
                end_date: Time.new(2022, 5, 14),
                status: 3)

# 4.
Booking.create!(shorty_id: top_scorer_lionel_messi.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 4, 7),
                end_date: Time.new(2022, 4, 8),
                status: 3)

# 5.
Booking.create!(shorty_id: drunkard_lionel_messi.id,
                user_id: james_campbell.id,
                start_date: Time.new(2022, 3, 21),
                end_date: Time.new(2022, 3, 22),
                status: 3)

# 6.
Booking.create!(shorty_id: shirtless_kevin_hart.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 5, 28),
                end_date: Time.new(2022, 5, 29),
                status: 0)

# 7.
Booking.create!(shorty_id: wingman_kevin_hart.id,
                user_id: yann_bouhadana.id,
                start_date: Time.new(2022, 5, 21),
                end_date: Time.new(2022, 5, 22),
                status: 1)

# 8.
Booking.create!(shorty_id: wierdo_kevin_hart.id,
                user_id: james_campbell.id,
                start_date: Time.new(2022, 5, 11),
                end_date: Time.new(2022, 5, 12),
                status: 3)

# 9.
Booking.create!(shorty_id: wingman_kevin_hart.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 3, 11),
                end_date: Time.new(2022, 3, 12),
                status: 3)

# 10.
Booking.create!(shorty_id: shirtless_kevin_hart.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 4, 5),
                end_date: Time.new(2022, 4, 6),
                status: 3)

# 11.
Booking.create!(shorty_id: big_business_danny_devito.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 5, 29),
                end_date: Time.new(2022, 5, 30),
                status: 0)

# 12.
Booking.create!(shorty_id: smiley_danny_devito.id,
                user_id: yann_bouhadana.id,
                start_date: Time.new(2022, 5, 24),
                end_date: Time.new(2022, 5, 25),
                status: 1)

# 13.
Booking.create!(shorty_id: big_business_danny_devito.id,
                user_id: kim_coquilla.id,
                start_date: Time.new(2022, 5, 16),
                end_date: Time.new(2022, 5, 17),
                status: 3)

# 14.
Booking.create!(shorty_id: wingman_danny_devito.id,
                user_id: jorge_alvarez.id,
                start_date: Time.new(2022, 4, 22),
                end_date: Time.new(2022, 4, 23),
                status: 3)

# 15.
Booking.create!(shorty_id: big_business_danny_devito.id,
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
