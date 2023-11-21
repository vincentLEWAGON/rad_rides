Vehicle.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

user_1 = User.create!(first_name: "Vincent", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+2@toto.fr", password: "azerty")
user_2 = User.create!(first_name: "Thomas", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+3@toto.fr", password: "azerty")
user_3 = User.create!(first_name: "Corentin", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+4@toto.fr", password: "azerty")
user_4 = User.create!(first_name: "Carine", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+5@toto.fr", password: "azerty")

vehicle_1 = Vehicle.create!(name: "Voiture volante", description: "Un véhicule qui peut se transformer en avion, offrant une solution de transport polyvalente pour éviter les embouteillages.", category: "voiture", price: 700, user_id: user_1.id)
vehicle_2 = Vehicle.create!(name: "Train à grande vitesse maglev", description: "Un train utilisant la lévitation magnétique pour atteindre des vitesses élevées, offrant un moyen rapide et confortable de voyager entre les villes.", category: "train", price: 8000, user_id: user_2.id)
