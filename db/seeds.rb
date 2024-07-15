# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating 10,000 accounts..."
10_000.times do |i|
  print "." if i % 1000 == 0
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Account.create!(
    email: Faker::Internet.email(name: "#{first_name} #{last_name}", separators: "."),
    first_name: first_name,
    last_name: last_name,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
    company: Faker::Company.name,
    position: Faker::Company.profession,
  )
end
puts "\nDone!"
