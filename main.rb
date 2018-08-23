require_relative 'planet'
require_relative 'solar_system'

def main
  puts "Fill in the information below to create a planet within your solar system."
  print "Planet's name: "
  planet_name = gets.chomp.to_s

  print "Planet's color: "
  color_of_planet = gets.chomp.to_s

  print "Planet's weight: "
  weight_of_planet = gets.chomp.to_i

  print "Planet's distance from sun (km): "
  distance_from_sun = gets.chomp.to_i

  print "A fun fact about the planet: "
  fun_fact_about_planet = gets.chomp.to_s

  new_planet = Planet.new(planet_name, color_of_planet, weight_of_planet, distance_from_sun, fun_fact_about_planet)
  puts new_planet.name
  puts new_planet.color
  puts new_planet.summary

  puts

  print "Name your solar system: "
  solary_system_name = gets.chomp.to_s
  solary_system_name = SolarSystem.new(solary_system_name)

  solary_system_name.add_planet(new_planet)
  list = solary_system_name.list_planets
  puts list

  puts
  print "Enter the planet you want to like to look up: "
  planet_to_lookup = gets.chomp.to_s

  found_planet_name = solary_system_name.find_planet_by_name(planet_to_lookup) #input: string, #output: string
  puts found_planet_name
  puts found_planet_name.summary
end

main
