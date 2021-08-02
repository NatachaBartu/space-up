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

cabins = [ "Gold", "Silver", "Bronze" ]

if Planet.count == 0
    planets.each do |p|
        Planet.create(name: p[:name])
        puts "created #{p[:name]} planet"
    end
end

if Cabin.count == 0
    cabins.each do |c|
        Cabin.create(name: c[:name])
        puts "created #{c[:name]} cabin"
    end
end

if Trip.count == 0

    user = User.find_by username: "Tester"
    planet = Planet.find_by name: "Mercury"
    cabin = Cabin.find_by name: "Gold"
    trip = user.trips.create(planet: planet, cabin: cabin, price: 123000, sold: false)
    puts "created trip"
end
