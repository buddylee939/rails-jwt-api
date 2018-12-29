# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(:email => 'pep@mail.com', :password => '123', :password_confirmation => '123')

puts '1 user created'

20.times do |i|
  Item.create!(
    name: "Name #{i}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat porro mollitia quos."
  )
end

puts '20 items created'
