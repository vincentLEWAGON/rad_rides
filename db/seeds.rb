User.destroy_all if Rails.env.development?
Vehicle.destroy_all if Rails.env.development?

user_1 = User.create!(first_name: "Vincent", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+2@toto.fr", password: "azerty")
user_2 = User.create!(first_name: "Thomas", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+3@toto.fr", password: "azerty")
user_3 = User.create!(first_name: "Corentin", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+4@toto.fr", password: "azerty")
user_4 = User.create!(first_name: "Carine", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+5@toto.fr", password: "azerty")

Vehicle.create!(name: "Ferrari", description: "blabla", category: "bloblo", price: 7, user_id: user_1.id)
