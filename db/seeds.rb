# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create a trip
trips = [
    {name: "Mercury"},
    {name: "Venus"},
    {name: "Mars"},
    {name: "Jupiter"},
    {name: "Saturn"},
    {name: "Uranus"},
    {name: "Neptune"},
    {name: "Pluto"} 
]
#create a username
if User.count == 0
    User.create(username:"Tester", email: "test@test.com", password: "password", password_confirmation: "password")
end

if Trip.count == 0
    trips.each do |t|
        Trip.create(description: t[:description])
        puts "created #{trip[:description]} trip"
    end
end