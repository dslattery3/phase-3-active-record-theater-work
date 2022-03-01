require 'faker'

puts "🌱 Seeding data..."



# run a loop 50 times
5.times do
  # create an audition with random data
    role = Role.create(
      character_name: Faker::Movies::HarryPotter.character
    )

  # create between 1 and 5 reviews for each Movies::HarryPotter
    10.times do
    audition = Audition.create(
        actor: Faker::Name.name,
        location: Faker::Movies::HarryPotter.location,
        phone: Faker::PhoneNumber.cell_phone,
        hired: false,
        role_id: role.id
      )
    end
end
puts "🌱 Done seeding!"