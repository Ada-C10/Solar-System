require_relative 'planet'
require_relative 'solar_system'

def main
  pluto = Planet.new("Pluto", "Green", 112.2, 34343.6,"maybe pluto isn't even really a planet!")
  puts pluto.summary

  solar_system = SolarSystem.new('Sol')
  earth = Planet.new("Earth", "Blue", 343535.1, 35655.1, "Earth is on fire!")
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.first.summary
solar_system = SolarSystem.new('Milky Way')
earth = Planet.new("Earth", "Blue", 12324.2, 23242.4, "Earth has lots of water!")
jupiter = Planet.new("Jupiter", "Red", 1234535.4, 23.2, "Jupiter is so hot" )
solar_system.add_planet(earth)
solar_system.add_planet(jupiter)

puts "Welcome to Outer Space!"
puts "Pick the letter next to what you want to do:
A for a planet list\nB for details on a planet\nC to exit the program"
user_input = gets.chomp.upcase
if user_input == "A"
  puts solar_system.list_planets
elsif user_input == "B"
  puts "What planet do you want to details on?:"
  users_planet = gets.chomp
  found_planet = solar_system.find_planet_by_name(users_planet)
  puts found_planet.first.summary
elsif user_input == "C"
  puts "ok, BYE"
end
end

main
