# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#list the array planets (dropdown)
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

#add a file on db
user = User.find_by username: "Tester"
if Profile.count == 0
    Profile.create(user: user, first_name:"First_name", last_name:"Last_name")
end

cabins = [ "Gold", "Silver", "Bronze" ]

#create a planet
if Planet.count == 0
    planets.each do |p|
        Planet.create(name: p[:name])
        puts "created #{p[:name]} planet"
    end
end

#create a cabin
if Cabin.count == 0
    cabins.each do |c|
        Cabin.create(name: c)
        puts "created #{c} cabin"
    end
end

if Trip.count == 0
    planet = Planet.find_by name: "Mercury"
    cabin = Cabin.find_by name: "Gold"
    trip = user.trips.create(planet: planet, cabin: cabin, price: 123000, sold: false)
    puts "created trip"
end
