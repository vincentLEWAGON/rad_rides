Vehicle.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

user_1 = User.create!(first_name: "Vincent", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+2@toto.fr", password: "azerty")
user_2 = User.create!(first_name: "Thomas", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+3@toto.fr", password: "azerty")
user_3 = User.create!(first_name: "Corentin", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+4@toto.fr", password: "azerty")
user_4 = User.create!(first_name: "Carine", last_name: "Wagon", postal_code: 75000, adress: "rue de la paix", city: "Paris",  email: "toto+5@toto.fr", password: "azerty")

15.times do
  Vehicle.create!(
    name: Faker::Vehicle.model,
    description: Faker::Vehicle.car_options,
    category: ["maritime", "terrestre", "aerien"].sample,
    price: rand(50..200),
    user_id: User.all.sample.id,
    address: Faker::Address.full_address,
    latitude: rand(45.73..45.78),
    longitude: rand(4.82..4.87)
    )
end

puts "Count user #{User.count}"
puts "Count vehicles #{Vehicle.count}"
