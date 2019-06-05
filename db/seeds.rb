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
 city = "Lille"
 photo = ""

)

Epicerie = Activity.new(
 name = "Robin des bios",
 description = "Epicerie associatvie - Vrac et 100% Bio",
 category = "Restaurant Bio",
 city = "Lille"
 photo = ""

)

Atelier = Activity.new(
  name = "Mademoiselle Biloba - L'atelier cosmétique",
  description = "Apprenez à réaliser vous-même vos cosmétiques et soins naturels lors de nos Ateliers",
  category = "DIY",
  city = "Lille",
  photo = ""

)

Shop = Activity.new(
  name = "el MARKET",
  description = "Eco friendly shop ",
  category = "Shopping",
  city = "Lille",
  photo = ""
)

Dechets = Activity.new(
  name = "World clean up day",
  description = "Ramassons les dechets dans nos quartiers ",
  category = "Event",
  city = "Lille",
  starting_date = "14/06/2019",
  ending_date = "14/06/2019",
  photo = ""
)


Festival = Activity.new(
  name = "We Love Green Festival",
  description = "Une super programmation, une organisation eco-frindly",
  category = "Event",
  city = "Paris"
  starting_date = "15/06/2019",
  ending_date = "16/06/2019",
  photo = ""
)

Salon = Activity.new(
  name = "Salon du Zero Dechet",
  description = "Retrouvez les acteurs les plus actifs de la communauté Zero Waste France",
  category = "Event",
  city = "Paris"
  starting_date = "15/06/2019"
  ending_date = "16/06/2019"
  photo = ""
)