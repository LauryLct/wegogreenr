# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.destroy_all
puts "all profiles destroyed"
Activity.destroy_all
puts "all activities destroyed"
User.destroy_all
puts "all users destroyed"

daniel = User.create!(
  email: "daniel@daniel.com",
  password: "azerty"
)
Profile.create!(
  first_name: "Daniel",
  last_name: "Feline",
  remote_photo_url: "https://avatars3.githubusercontent.com/u/45879795?s=460&v=4",
  age: 44,
  nickname: "Fizzy Shrimp",
  user: daniel,
)



laury = User.create!(
  email: "laury@laury.com",
  password: "azerty"
)
Profile.create!(
  first_name: "Laury",
  last_name: "Lecaut",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560443525/teqpoxj6giue8br5hikm.jpg",
  age: 32,
  nickname: "SuperGreenDev",
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
  nickname: "Trello Geek",
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
  nickname: "Green MaMa",
  age: 32,
  user: marie,
)

puts "all users & profiles created"

so_bio = Activity.create!(
 name: "So Bio",
 description: "Pour vous garantir la plus grande qualité, nous privilégions toujours la proximité en travaillant avec des producteurs locaux.",
 category: "Alimentation",
 street: "3 Avenue Gustave Effeil",
 zipcode: "33600",
 city: "Pessac",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737826/le_cirque_ykjjw7.jpg",
 user: marie,
 url: "http://www.bio-c-bon.eu/",
)
Review.create!(
  rate: rand(4..5),
  activity: so_bio,
  user: [laury, daniel, marie, stephane].sample,
  )

ptit_bio = Activity.create!(
 name: "Le p'tit bio",
 description: "Des produits issus de l'agriculture biologique.",
 category: "Restaurant",
 street: "273 cours de l'Argonne",
 zipcode: "33000",
 city: "Bordeaux",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560438754/sobio_zoe4y3.jpg",
 user: marie,
 url: "http://riedel.unblog.fr/",
)
Review.create!(
  rate: rand(3..5),
  activity: ptit_bio,
  user: [laury, daniel, marie, stephane].sample,
  )

colibris = Activity.create!(
 name: "Colibris",
 description: "Maraîchers et primeurs, bouchers, fromagers, céréales, pain, vins, spécialités...",
 category: "Alimentation",
 street: "Place des Martyrs de la Résistance",
 zipcode: "33200",
 city: "Bordeaux",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560439088/colibris_bbf7zx.jpg",
 user: marie,
 url: "http://riedel.unblog.fr/",
)
Review.create!(
  rate: rand(3..5),
  activity: colibris,
  user: [laury, daniel, marie, stephane].sample,
  )

artisans = Activity.create!(
 name: "Artisans du monde",
 description: "Une large gamme de produits 100% équitables avec plus de 1000 références.",
 category: "Shop",
 street: "30 rue du parlement Saint Pierre",
 zipcode: "33000",
 city: "Bordeaux",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560439412/artisan_b7gzhm.jpg",
 user: marie,
 url: "http://bordeaux.artisansdumonde.org",
)
Review.create!(
  rate: rand(3..5),
  activity: artisans,
  user: [laury, daniel, marie, stephane].sample,
  )

cap = Activity.create!(
 name: "Cap ou pas cap",
 description: "de nombreux ateliers : informatique, bricolage, cuisine, jardinage...",
 category: "DIY",
 street: "17 Place Roosevelt",
 zipcode: "33110",
 city: "Le Bouscat",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560439867/cap_yz80u1.jpg",
 user: marie,
 url: "http://bouscat-solidarite.fr/",
)
Review.create!(
  rate: rand(3..5),
  activity: cap,
  user: [laury, daniel, marie, stephane].sample,
  )

la_classe = Activity.create!(
 name: "La classe",
 description: "Ce café d'auberge de jeunesse propose une petite restauration à base de produits bio, locaux et équitables.",
 category: "Restaurant",
 street: "100 cours du médoc",
 zipcode: "33000",
 city: "Bordeaux",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737826/le_cirque_ykjjw7.jpg",
 user: marie,
 url: "https://fr-fr.facebook.com/lecirque.lille/",
)
Review.create!(
  rate: 5,
  activity: la_classe,
  user: laury,
  )
  Review.create!(
  rate: 5,
  activity: la_classe,
  user: daniel,
  )
  Review.create!(
  rate: 5,
  activity: la_classe,
  user: marie,
  )


le_cirque = Activity.create!(
 name: "Le cirque",
 description: "Ce café d'auberge de jeunesse propose une petite restauration à base de produits bio, locaux et équitables.",
 category: "Restaurant",
 street: "139 Rue des Postes",
 zipcode: "59000",
 city: "Lille",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737826/le_cirque_ykjjw7.jpg",
 user: marie,
 url: "https://fr-fr.facebook.com/lecirque.lille/",
)
Review.create!(
  rate: rand(4..5),
  activity: le_cirque,
  user: [laury, daniel, marie, stephane].sample,
  )

robin = Activity.create!(
 name: "Robin des bios",
 description: "epicerie associative - Vrac et 100% Bio",
 category: "Alimentation",
 street: "23 Rue Gosselet",
 zipcode: "59000",
 city: "Lille",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559738018/Robin_des_bio_qpxnlq.jpg",
 user: marie,
 url: "https://www.robindesbio.org/",
)
Review.create!(
  rate: 4,
  activity: robin,
  user: laury,
  )
Review.create!(
  rate: 4,
  activity: robin,
  user: daniel,
  )
  Review.create!(
  rate: 4,
  activity: robin,
  user: marie,
  )

alim1 = Activity.create!(
 name: "Bio c'est bon",
 description: "Alimentation et boissons 100% Bio",
 category: "Alimentation",
 street: "10 Rue Montaigne",
 zipcode: "59000",
 city: "Lille",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560506116/biocbon_rvkjm0.jpg",
 user: laury,
 url: "https://www.biocestbon.com/",
)
Review.create!(
  rate: rand(1..3),
  activity: alim1,
  user: [laury, daniel, marie].sample,
  )


  alim2 = Activity.create!(
 name: "Day by Day",
 description: "Vrac et Bio, pensez à vos bocaux!",
 category: "Alimentation",
 street: "12 Rue d'alger",
 zipcode: "59000",
 city: "Lille",
 remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560506327/dbd_vukcyy.jpg",
 user: laury,
 url: "https://www.robindesbio.org/",
)
Review.create!(
  rate: rand(1..3),
  activity: alim2,
  user: [laury, daniel, marie, stephane].sample,
  )

biloba = Activity.create!(
  name: "Mademoiselle Biloba - L'atelier cosmétique",
  description: "Apprenez à réaliser vous-même vos cosmétiques et soins naturels",
  category: "DIY",
  street: "104 Rue Saint-André",
  zipcode: "59000",
  city: "Lille",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737812/atelier_lkjzep.jpg",
  user: daniel,
  url:"https://mademoiselle-biloba.fr/",
)
Review.create!(
  rate: rand(3..5),
  activity: biloba,
  user: [laury, daniel, marie, stephane].sample,
  )

el_market = Activity.create!(
  name: "el MARKET",
  description: "Shop eco-responsable",
  category: "Shop",
  street: "128 Rue Léon Gambetta",
  zipcode: "59000",
  city: "Lille",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737819/elmarket_aztxhp.png",
  user: stephane,
  url: "https://www.elmarket.fr/",
)
Review.create!(
  rate: rand(3..5),
  activity: el_market,
  user: [laury, daniel, marie, stephane].sample,
  )

so_bio = Activity.create!(
  name: "So Bio",
  description: "Shop eco-responsable",
  category: "Shop",
  street: "128 Rue Léon Gambetta",
  zipcode: "59000",
  city: "Lille",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737819/elmarket_aztxhp.png",
  user: stephane,
  url: "https://www.elmarket.fr/",
)
Review.create!(
  rate: rand(3..5),
  activity: el_market,
  user: [laury, daniel, marie, stephane].sample,
  )

dechets = Activity.create!(
  name: "World clean up day",
  description: "Ramassons les déchets dans nos quartiers",
  category: "Event",
  street: "Gare lille Flandres",
  zipcode: "59000",
  city: "Lille",
  starting_date: "14/06/2019",
  ending_date: "14/06/2019",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737829/worldcleanup_m5h0ln.png",
  user: laury,
  url: "https://www.worldcleanupday.fr/",
)

dechet = Activity.create!(
  name: "World clean up Bordeaux",
  description: "Ramassons les déchets dans nos quartiers",
  category: "Event",
  street: "Place de la bourse",
  zipcode: "33000",
  city: "Bordeaux",
  starting_date: "14/06/2019",
  ending_date: "14/06/2019",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560444870/world_clean_up_rqohrg.png",
  user: stephane,
  url: "https://www.worldcleanupday.fr/",
)

festival = Activity.create!(
  name: "We Love Green Festival",
  description: "Une super programmation, une organisation eco-friendly",
  category: "Event",
  street: "12 avenue de verdun",
  zipcode: "59130",
  city: "Lambersart",
  starting_date: "29/06/2019",
  ending_date: "30/06/2019",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559737824/festival_udaurr.png",
  user: marie,
  url: "https://www.welovegreen.fr/",
)

festivalbx = Activity.create!(
  name: "Eco Festival Bordeaux",
  description: "Une super programmation, une organisation eco-friendly",
  category: "Event",
  street: "Place des quinconces",
  zipcode: "33000",
  city: "Bordeaux",
  starting_date: "22/06/2019",
  ending_date: "23/06/2019",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1560444934/festival_bx_yxenky.jpg",
  user: marie,
  url: "https://www.welovegreen.fr/",
)

salon = Activity.create!(
  name: "La journée des Z’héros (déchet)",
  description: "Retrouvez les acteurs les plus actifs de la communauté Zero Waste France",
  category: "Event",
  street: "58 rue kleber",
  zipcode: "59110",
  city: "La madeleine",
  starting_date: "20/05/2020",
  ending_date: "23/06/2020",
  remote_photo_url: "https://res.cloudinary.com/dom4dvol9/image/upload/v1559738170/ZERO_DECHET_sk3n2d.jpg",
  user: stephane,
  url: "https://www.facebook.com/events/salle-andr%C3%A9-malraux-lambersart/la-journ%C3%A9e-des-zh%C3%A9ros-/791997334517444/",
)

boulangerie = Activity.create!(
  name: "Le fournil des saveurs",
  description: "Une boulangerie bio",
  category: "Alimentation",
  street: "270 rue des Fusillés",
  zipcode: "59650",
  city: "Villeneuve d'ascq",
  remote_photo_url: "https://static.actu.fr/uploads/2017/09/25576-170919150959446-6-854x568.jpg",
  user: stephane,
  url: "",
)
Review.create!(
  rate: rand(1..5),
  activity: boulangerie,
  user: [laury, daniel, marie, stephane].sample,
  )

boulangerie2 = Activity.create!(
  name: "Saveurs et Saisons",
  description: "Une boulangerie bio",
  category: "Alimentation",
  street: "Place de la Nouvelle Aventure Halles de Wazemmes",
  zipcode: "59000",
  city: "Lille",
  remote_photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/0b/a8/41/ca/stand-2.jpg",
  user: marie,
  url: "",
)
Review.create!(
  rate: rand(1..5),
  activity: boulangerie2,
  user: [laury, daniel, marie, stephane].sample,
  )

bis_2_fly = Activity.create!(
 name: "Bis 2 fly",
 description: "Une cuisine exclusivement à base de produits de l'agriculture biologique",
 category: "Restaurant",
 street: "19 rue Nicolas Leblanc",
 zipcode: "59000",
 city: "Lille",
 remote_photo_url: "https://pbs.twimg.com/media/BzWA-FyIgAAjg3K.jpg",
 user: daniel,
 url: "http://www.bis2fly.com/",
)
Review.create!(
  rate: 4,
  activity: bis_2_fly,
  user: [laury, daniel, marie, stephane].sample,
  )

com_ferme = Activity.create!(
 name: "Com à la ferme",
 description: "Com à la ferme est  un magasin de producteurs. Pour manger bon, frais et de saison",
 category: "Alimentation",
 street: "2140 Rue Faidherbe",
 zipcode: "59134",
 city: "Fournes-en-Weppes",
 remote_photo_url: "http://produits-fermiers.e-monsite.com/medias/images/produit-fermier-com-a-laferme.jpg",
 user: marie,
 url: "",
)
Review.create!(
  rate: rand(1..5),
  activity: com_ferme,
  user: [laury, daniel, marie, stephane].sample,
  )

interval = Activity.create!(
 name: "Association Interval",
 description: "Légumes de saison, variétés anciennes.",
 category: "Alimentation",
 street: "Rue des Carrières de ciments",
 zipcode: "59320",
 city: "Haubourdin",
 remote_photo_url: "http://produits-fermiers.e-monsite.com/medias/images/produit-fermier-com-a-laferme.jpg",
 user: marie,
 url: "",
)
Review.create!(
  rate: rand(1..5),
  activity: interval,
  user: [laury, daniel, marie, stephane].sample,
  )

cote_bio = Activity.create!(
 name: "Mon côté bio",
 description: "Création et ventes de vêtements en coton bio et en lin bio confectionnés en France.",
 category: "Shop",
 street: "125 rue de Lys",
 zipcode: "59390",
 city: "Toufflers",
 remote_photo_url: "https://www.moncotebio.cc/modules/homeslider/images/d9a9a57b5fd38a05bb33d122ce94c559af55cde0_ambiance-lin.jpg",
 user: marie,
 url: "https://www.moncotebio.cc/",
)

Review.create!(
  rate: rand(1..5),
  activity: cote_bio,
  user: [laury, daniel, marie, stephane].sample,
  )

puts "all activities created"

message_1 = Message.create!(
  content: "Salut ! Quelqu'un a déjà testé ce restaurant ?",
  user: stephane,
  activity: la_classe,

  )

message_2 = Message.create!(
  content: "Salut Marie, J'y vais ce weekend normalement, je vous dirai ce que j'en pense",
  user: laury,
  activity: la_classe,
  )

message_3 = Message.create!(
  content: "Salut, C'est vraiment très bon, et super ambiance, je le conseille",
  user: daniel,
  activity: la_classe,
  )

puts "All messages created"
