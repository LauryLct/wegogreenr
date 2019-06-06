# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.destroy_all
User.destroy_all
Activity.destroy_all


daniel = User.create!(
  email: "daniel@daniel.com",
  password: "azerty" 
)
Profile.create!(
  first_name: "Daniel",
  last_name: "Feline",
  remote_photo_url: "https://avatars3.githubusercontent.com/u/45879795?s=460&v=4",
  age: 44,
  user: daniel,
)



laury = User.create!(
  email: "laury@laury.com",
  password: "azerty"
)
Profile.create!(
  first_name: "Laury",
  last_name: "Lecaut",
  remote_photo_url: "https://avatars3.githubusercontent.com/u/32016201?s=460&v=4",
  age: 32,
  user: laury,
)

stephane = User.create!(
  email: "steph@steph.com",
  password: "azerty"
)
Profile.create!(
  first_name: "Stephane",
  last_name: "Vincent",
  remote_photo_url: "https://avatars1.githubusercontent.com/u/49432207?s=400&u=1756ce57a7fe5c8797ce7ff831587da1868714f7&v=4",
  age: 36,
  user: stephane,
)

marie = User.create!(
  email: "marie@marie.com",
  password: "azerty"
)
Profile.create!( 
  first_name:  "Marie",
  last_name: "Vincent",
  remote_photo_url: "https://avatars2.githubusercontent.com/u/49431430?s=460&v=4",
  age: 32,
  user: marie,
)

restaurant = Activity.create!(
 name: "Le cirque",
 description: "Ce café d'auberge de jeunesse propose une petite restauration à base de produits bio, locaux et équitables.",
 category: "Restaurant Bio",
 street: "139 Rue des Postes",
 zipcode: "59000",
 city: "Lille",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737826/le_cirque_ykjjw7.jpg",
 user: marie,
)

epicerie = Activity.create!(
 name: "Robin des bios",
 description: "Epicerie associative - Vrac et 100% Bio",
 category: "Restaurant Bio",
 street: "23 Rue Gosselet",
 zipcode: "59000",
 city: "Lille",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559738018/Robin_des_bio_qpxnlq.jpg",
 user: marie,
)

atelier = Activity.create!(
  name: "Mademoiselle Biloba - L'atelier cosmétique",
  description: "Apprenez à réaliser vous-même vos cosmétiques et soins naturels",
  category: "DIY",
  street: "104 Rue Saint-André",
  zipcode: "59000",
  city: "Lille",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737812/atelier_lkjzep.jpg",
  user: daniel,

)

shop = Activity.create!(
  name: "el MARKET",
  description: "Eco friendly shop ",
  category: "Shopping",
  street: "128 Rue Léon Gambetta",
  zipcode: "59000",
  city: "Lille",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737819/elmarket_aztxhp.png",
  user: stephane,
)

dechets = Activity.create!(
  name: "World clean up day",
  description: "Ramassons les dechets dans nos quartiers ",
  category: "Event",
  city: "Lille",
  starting_date: "14/06/2019",
  ending_date: "14/06/2019",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737829/worldcleanup_m5h0ln.png",
  user: laury,
)

festival = Activity.create!(
  name: "We Love Green Festival",
  description: "Une super programmation, une organisation eco-friendly",
  category: "Event",
  city: "Arras",
  starting_date: "15/06/2019",
  ending_date: "16/06/2019",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737824/festival_udaurr.png",
  user: marie,
)

salon = Activity.create!(
  name: "Salon du Zéro Dechet",
  description: "Retrouvez les acteurs les plus actifs de la communauté Zero Waste France",
  category: "Event",
  city: "Lille",
  starting_date: "20/06/2019",
  ending_date: "23/06/2019",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559738170/ZERO_DECHET_sk3n2d.jpg",
  user: stephane,
)
