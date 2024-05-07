require 'faker'

# Seed for creating users
10.times do |i|
  User.create!(
    email: Faker::Internet.unique.email,
    password: "password",
    description: Faker::Lorem.paragraph,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

# Seed for creating events
5.times do |i|
  Event.create!(
    title: Faker::Lorem.sentence,
    start_date: DateTime.now + rand(1..30).days,
    duration: rand(1..4) * 30,
    price: rand(1..100),
    location: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 3) # Ajout de la description avec Faker
  )
end
