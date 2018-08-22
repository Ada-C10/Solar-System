# main.rb
require_relative 'planet'
require_relative 'solar_system'

# :name, :color, :mass_kg, :distance_from_sum_km, :fun_fact
def main
  solar_system = SolarSystem.new('WomenofCode')

  earth = Planet.new("earth", "Green", 1000, 430, "It's hot")
  solar_system.add_planet(earth)

  bay = Planet.new("bay", "Purple", 4000, 342, "Largest flea market capitol of the world")
  solar_system.add_planet(bay)

  sasquatch = Planet.new("sasquatch", "Brown", 3400, 234, "It's really fuzzy")
  solar_system.add_planet(sasquatch)

  hammock = Planet.new("hammock", "Rainbow", 5646, 642, "Everyone lives on a Hammock")
  solar_system.add_planet(hammock)

  santa = Planet.new("santa", "Ocean", 1040, 378, "The fountain of youth lives here")
  solar_system.add_planet(santa)



  # santaCruz = Planet.new("SantaCruz", "Dummy", 4839, 034, "There is no place like home")
  # solar_system.add_planet(santaCruz)
#
#   found_planet = solar_system.find_planet_by_name("sanTa")
#     # if found_planet == true
#       puts found_planet
# # => #<Planet:0x00007fe7c2868ee8>
#       puts found_planet.summary

puts "Please select what you would like to learn about WomenofCode Solar System"
puts "1. List Planets\n2. Add Your Own Planet\n3. Exit"
user_input = gets.chomp.to_i

until user_input == 3
  if user_input == 1
    list = solar_system.list_planets
    puts list
    puts "What Planet would you like to learn about?"
    user_input = gets.chomp
    found_planet = solar_system.find_planet_by_name(user_input)
    puts found_planet.summary

  elsif user_input == 2
    puts "What would you like to call your planet"
    name = gets.chomp
    puts "What color is your planet"
    color = gets.chomp
    puts "Your planet Mass in Kg:"
    mass_kg = gets.chomp
    puts "Distance from the Sun"
    distance_from_sum_km = gets.chomp
    puts "Fun Facts"
    fun_fact = gets.chomp

    new_planet = Planet.new(name, color, mass_kg, distance_from_sum_km, fun_fact)
    solar_system.add_planet(new_planet)
  end
  puts "\nPlease select what you would like to learn about WomenofCode Solar System"
  puts "1. List Planets\n2. Add Your Own Planet\n3. Exit"
  user_input = gets.chomp.to_i
end

end

main
