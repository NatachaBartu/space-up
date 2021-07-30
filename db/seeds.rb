# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create a trip
planets = [
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

cabins = [
    {name: "Gold", price: 1000},
    {name: "Silver", price: 100},
    {name: "Bronze", price: 10},
]

if Planet.count == 0
    planets.each do |p|
        Planet.create(name: p[:name])
        puts "created #{p[:name]} trip"
    end
end

if Trip.count == 0

    user = User.find_by username: "Tester"
    planets.each do |t|
        planet = Planet.find_by name: t[:name]
        trip = user.trips.create(planet: planet)
        puts "created #{t[:name]} trip"
        cabins.each do |c|
            Cabin.create(trip: trip, name: c[:name], price: c[:price], sold: false)
            puts "created #{c[:name]} cabin"
        end
    end
end
