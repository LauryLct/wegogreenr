# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy_all"
User.destroy_all
Activity.destroy_all


Daniel = User.new(
  email = "daniel@daniel.com",
  password = "azerty",
  first_name = "Daniel",
  last_name = "Feline",
  photo = "https://avatars3.githubusercontent.com/u/45879795?s=460&v=4",
  age = 44
)

Laury = User.new(
  email = "laury@laury.com",
  password = "azerty",
  first_name = "Laury",
  last_name = "Lecaut",
  photo = "https://avatars3.githubusercontent.com/u/32016201?s=460&v=4",
  age = 32

)

Stephane = User.new(
  email = "steph@steph.com",
  password = "azerty",
  first_name = "Stephane",
  last_name = "Vincent",
  photo = "https://avatars1.githubusercontent.com/u/49432207?s=400&u=1756ce57a7fe5c8797ce7ff831587da1868714f7&v=4",
  age = 36

)

Marie = User.new(
  email = "marie@marie.com",
  password = "azerty",
  first_name = "Marie",
  last_name = "Vincent",
  photo = "https://avatars2.githubusercontent.com/u/49431430?s=460&v=4",
  age = 32

)

Restaurant = Activity.new(
 name = "Le cirque",
 description = "Ce café d'auberge de jeunesse propose une petite restauration à base de produits bio, locaux et équitables.",
 category = "Restaurant Bio",
 street = "139 Rue des Postes",
 zipcode = "59000",
 city = "Lille",
 photo = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737826/le_cirque_ykjjw7.jpg"
)

Epicerie = Activity.new(
 name = "Robin des bios",
 description = "Epicerie associatvie - Vrac et 100% Bio",
 category = "Restaurant Bio",
 street = "23 Rue Gosselet",
 zipcode = "59000",
 city = "Lille",
 photo = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559738018/Robin_des_bio_qpxnlq.jpg"
)

Atelier = Activity.new(
  name = "Mademoiselle Biloba - L'atelier cosmétique",
  description = "Apprenez à réaliser vous-même vos cosmétiques et soins naturels lors de nos Ateliers",
  category = "DIY",
  street = "104 Rue Saint-André",
  zipcode = "59000",
  city = "Lille",
  photo = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737812/atelier_lkjzep.jpg"

)

Shop = Activity.new(
  name = "el MARKET",
  description = "Eco friendly shop ",
  category = "Shopping",
  street = "128 Rue Léon Gambetta",
  zipcode = "59000",
  city = "Lille",
  photo = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737819/elmarket_aztxhp.png"
)

Dechets = Activity.new(
  name = "World clean up day",
  description = "Ramassons les dechets dans nos quartiers ",
  category = "Event",
  city = "Lille",
  starting_date = "14/06/2019",
  ending_date = "14/06/2019",
  photo = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737829/worldcleanup_m5h0ln.png"
)


Festival = Activity.new(
  name = "We Love Green Festival",
  description = "Une super programmation, une organisation eco-frindly",
  category = "Event",
  city = "Arras",
  starting_date = "15/06/2019",
  ending_date = "16/06/2019",
  photo = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737824/festival_udaurr.png"
)

Salon = Activity.new(
  name = "Salon du Zero Dechet",
  description = "Retrouvez les acteurs les plus actifs de la communauté Zero Waste France",
  category = "Event",
  city = "Lille",
  starting_date = "20/06/2019",
  ending_date = "23/06/2019",
  photo = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559738170/ZERO_DECHET_sk3n2d.jpg"
)
