Booking.destroy_all if Rails.env.development?
Vehicle.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

user_1 = User.create!(first_name: "Vincent", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+2@toto.fr", password: "azerty")
user_2 = User.create!(first_name: "Thomas", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+3@toto.fr", password: "azerty")
user_3 = User.create!(first_name: "Corentin", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+4@toto.fr", password: "azerty")
user_4 = User.create!(first_name: "Carine", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+5@toto.fr", password: "azerty")

vehicle1 = Vehicle.create!(
  name: "Voiture volante",
  description: "Un véhicule qui peut se transformer en avion, offrant une solution de transport polyvalente pour éviter les embouteillages.		",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle2 = Vehicle.create!(
  name: "Sous-marin de tourisme",
  description: "Un sous-marin conçu pour des excursions touristiques sous-marines, offrant une vue panoramique sur la vie marine.			",
  category: "maritime",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle3 = Vehicle.create!(
  name: "Vélo amphibie",
  description: "Un vélo qui peut également naviguer sur l'eau, permettant aux cyclistes d'explorer à la fois les routes et les voies navigables.	",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle4 = Vehicle.create!(
  name: "Hovercraft personnel",
  description: "Un petit hovercraft personnel pour des déplacements rapides sur l'eau et les surfaces planes sans être limité par les obstacles traditionnels.	",
  category: "maritime",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle5 = Vehicle.create!(
  name: "Moto volante",
  description: "Une moto équipée de propulseurs ou d'ailes pour permettre le vol, offrant une expérience de conduite unique.	",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle6 = Vehicle.create!(
  name: "Voiture tout-terrain extrême",
  description: "Un véhicule robuste conçu pour affronter les terrains les plus difficiles, avec des fonctionnalités telles que des pneus gonflables, une suspension avancée et une résistance à l'eau.	",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle7 = Vehicle.create!(
  name: "Véhicule électrique solaire",
  description: "Une voiture alimentée entièrement par l'énergie solaire, offrant une solution durable et écologique pour les déplacements.",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)
vehicle8 = Vehicle.create!(
  name: "Skateboard électrique tout-terrain",
  description: "Un skateboard équipé de moteurs électriques et de roues adaptées aux terrains difficiles, offrant une nouvelle expérience de glisse.		",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle9 = Vehicle.create!(
  name: "Tricycle motorisé pour le transport urbain",
  description: "Un tricycle électrique équipé d'un compartiment de transport, idéal pour les déplacements en milieu urbain avec une capacité de stockage.			",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle10 = Vehicle.create!(
  name: "Véhicule de transport personnel à lévitation magnétique",
  description: "Un véhicule qui utilise la lévitation magnétique pour se déplacer au-dessus du sol, offrant une expérience de conduite futuriste et sans friction.				",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle11 = Vehicle.create!(
  name: "Trottinette électrique à assistance robotique",
  description: "Une trottinette équipée d'une assistance robotique pour aider le cycliste dans les montées et les longues distances, offrant un moyen plus efficace de se déplacer en ville.				",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)
vehicle12 = Vehicle.create!(
  name: "Bateau solaire de croisière",
  description: "Un bateau de croisière propulsé entièrement à l'énergie solaire, offrant des voyages durables le long des voies navigables.				",
  category: "maritime",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle13 = Vehicle.create!(
  name: "Voiture autonome de camping",
  description: "Un véhicule autonome équipé d'un intérieur aménagé pour le camping, offrant une expérience de voyage sans souci.		",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle14 = Vehicle.create!(
  name: "Véhicule de course tout-terrain électrique",
  description: "Une voiture de course tout-terrain alimentée par l'électricité, conçue pour les compétitions hors route avec une accélération rapide.		",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle15 = Vehicle.create!(
  name: "Train à grande vitesse maglev",
  description: "Un train utilisant la lévitation magnétique pour atteindre des vitesses élevées, offrant un moyen rapide et confortable de voyager entre les villes.			",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle16= Vehicle.create!(
  name: "Vélo-cargo électrique pliable",
  description: "Un vélo-cargo électrique qui se plie facilement pour un stockage pratique, idéal pour les déplacements urbains avec des charges supplémentaires.			",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle17 = Vehicle.create!(
  name: "Bus à énergie solaire avec jardins verticaux",
  description: "Un bus à énergie solaire doté de murs végétaux verticaux pour améliorer la qualité de l'air en déplacement.				",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle18= Vehicle.create!(
  name: "Hoverboard tout-terrain",
  description: "Un hoverboard équipé de pneus tout-terrain pour une expérience de glisse hors route.				",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle19 = Vehicle.create!(
  name: "Véhicule amphibie transformable",
  description: "Un véhicule qui peut passer du mode terrestre au mode aquatique, offrant une grande polyvalence pour les aventures variées.					",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle20= Vehicle.create!(
  name: "Vélo à lévitation magnétique",
  description: "Un vélo utilisant la technologie de lévitation magnétique pour une conduite sans friction et une expérience de déplacement futuriste.					",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle21 = Vehicle.create!(
  name: "Trottinette électrique à assistance robotique",
description: "Une trottinette équipée d'une assistance robotique pour aider le cycliste dans les montées et les longues distances, offrant un moyen plus efficace de se déplacer en ville.				",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle22 = Vehicle.create!(
  name: "Griffon aérien",
  description: "Un majestueux griffon capable de voler, utilisé comme monture pour les voyages aériens.			",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle23= Vehicle.create!(
  name: "Tortue éclair",
  description: "Une tortue géante dotée de capacités électriques, utilisée comme moyen de transport terrestre rapide.			",
  category: "maritime",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle24 = Vehicle.create!(
  name: "Hippogriffe marin",
description: "Un hippogriffe adapté pour nager dans les océans, utilisé comme moyen de transport aquatique.		",
  category: "maritime",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle25 = Vehicle.create!(
  name: "Loup des neiges",
  description: "Un loup blanc robuste, adapté aux climats froids, utilisé pour le transport dans des régions enneigées.	",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle26= Vehicle.create!(
  name: "Dragon éthéré",
  description: "Un dragon translucide capable de se déplacer à travers les dimensions, offrant un moyen de transport interdimensionnel.	",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle27 = Vehicle.create!(
  name: "Licorne des cieux",
description: "Une licorne ailée qui peut voler à travers les nuages, utilisée pour des voyages aériens élégants.	",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle28 = Vehicle.create!(
  name: "Chameau de sable magique",
  description: "Un chameau capable de se déplacer rapidement à travers les déserts grâce à des pouvoirs magiques.",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle29= Vehicle.create!(
  name: "Panthère de l'ombre",
  description: "Une grande panthère noire capable de se fondre dans les ombres, utilisée pour des voyages furtifs.	",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle30 = Vehicle.create!(
  name: "Lapin sauteur",
description: "Un lapin géant avec des pattes extrêmement puissantes, utilisé comme monture pour des sauts impressionnants.	",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)
Vehicle31= Vehicle.create!(
  name: "Phénix flamboyant",
  description: "Un phénix dont les ailes enflammées permettent de voler à travers les cieux, utilisé comme moyen de transport majestueux.	",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle32 = Vehicle.create!(
  name: "Ours de montagne rapide",
description: "Un ours robuste capable de grimper aisément sur les montagnes, utilisé comme moyen de transport en terrain escarpé.",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle33 = Vehicle.create!(
  name: "Serpent des rivières",
description: "Un serpent aquatique qui peut naviguer à travers les rivières et les cours d'eau, utilisé comme moyen de transport fluvial.	",
  category: "maritime",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)
Vehicle34= Vehicle.create!(
  name: "Cheval arc-en-ciel",
  description: "Un cheval aux crins colorés capable de créer des arcs-en-ciel lorsqu'il court, utilisé pour des voyages joyeux.",
  category: "aerien",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle35 = Vehicle.create!(
  name: "Araignée sylvestre",
description: "Une araignée géante avec des fils tissés magiquement, utilisée comme moyen de transport forestier.",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)

vehicle36 = Vehicle.create!(
  name: "Éléphant de cristal",
description: "Un éléphant majestueux dont la peau est faite de cristaux étincelants, utilisé pour des voyages solennels.",
  category: "terrestre",
  price: rand(50..200),
  user_id: User.all.sample.id,
  address: Faker::Address.full_address,
  latitude: rand(45.73..45.78),
  longitude: rand(4.82..4.87)
)


puts "Count user #{User.count}"
puts "Count vehicles #{Vehicle.count}"
