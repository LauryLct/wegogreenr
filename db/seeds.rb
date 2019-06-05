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
  photo = "",
  age = 44
)

Laury = User.new(
  email = "laury@laury.com",
  password = "azerty",
  first_name = "Laury",
  last_name = "Lecaut",
  photo = "",
  age = 32

)

Stephane = User.new(
  email = "steph@steph.com",
  password = "azerty",
  first_name = "Stephane",
  last_name = "Vincent",
  photo = "",
  age = 36

)

Marie = User.new(
  email = "marie@marie.com",
  password = "azerty",
  first_name = "Marie",
  last_name = "Vincent",
  photo = "",
  age = 32

)
