require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main

  solar_system = SolarSystem.new('Sun')

  solar_system.add_planet(
    Planet.new('Mercury', 'grey', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

  solar_system.add_planet(
    Planet.new('Venus', 'brownish grey', 4.867e24, 1.082e8, "Third brightest object in Earth's sky after the Sun and Moon"))

  solar_system.add_planet(
   Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, "Only planet known to support life"))

  mars = Planet.new('Mars', 'red', 6.41693e23, 2.2279e8, "Second smallest planet in the solar system")
  solar_system.add_planet(mars)

 solar_system.add_planet(
  Planet.new('Jupiter', 'grey', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

solar_system.add_planet(
  Planet.new('Saturn', 'yellow', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

solar_system.add_planet(
  Planet.new('Neptune', 'grey', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

solar_system.add_planet(
  Planet.new('Uranus', 'light blue', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))


loop do
puts "Would you like to list planets, see planet details or exit?(list / details / exit)"
action = gets.chomp.downcase

break if action == "exit"


  if action ==  "list"
    list = solar_system.list_planets
    puts list
  elsif action == "details"
    print "What planet do you want details of: "
    planet = gets.chomp.downcase

    found_planet = solar_system.find_planet_by_name('Earth')

      if found_planet
          puts found_planet.summary
      else
          puts "Planet not found."
      end
   end 
end
  # list = solar_system.list_planets
  # puts list

  # puts '##################################################'
  # found_planet = solar_system.find_planet_by_name('Earth')
  #
  # if found_planet
  #     puts found_planet.summary
  # else
  #     puts "Planet not found."
  # end
end

main
