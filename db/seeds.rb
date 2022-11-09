puts 'Clearing the database!'

Alien.destroy_all
Earthling.destroy_all
Visitation.destroy_all

puts 'Database cleared!'

puts 'Creating Aliens 👽'

10.times do
    Alien.find_or_create_by(name: Faker::Space.meteorite, earth_disguise_name: Faker::Name.name, home_planet: Faker::Space.star, light_years_to_home_planet: rand(1000000...10000000000000000))
end

puts 'Aliens are out there... 👾'

puts 'Earthlings being born! 👼'

15.times do
    Earthling.find_or_create_by(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, job: Faker::Job.title)
end

puts 'Earthlings are miserable at work... 🕴️'

puts 'Aliens are visiting Earth... 🛸'

20.times do
    Visitation.find_or_create_by(alien: Alien.all.sample, earthling: Earthling.all.sample, date: Faker::Date.between(from: '1800-01-01', to: '2022-12-31'))
end

puts 'Earthlings have been abducted! 🛸'

puts 'Seeding of database complete!!!'
