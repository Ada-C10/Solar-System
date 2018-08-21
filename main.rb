# main.rb
require_relative "lib/planet"
require_relative "lib/solar_system"
require 'pry'

def planet_details(solar_system)
  puts "What planet would you like to learn about?"
  planet = gets.chomp
  planet_findings = solar_system.find_planet_by_name(planet)
  if planet_findings.class == Planet
    puts planet_findings.summary
  else
    puts planet_findings
  end

end

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 1.416e8, 'Pieces of Mars have been found on Earth')
  venus = Planet.new('Venus', 'gray-ish', 4.867e24, 6.724e7, 'Second brightest object in the night sky after the Moon')
  jupiter = Planet.new('Jupiter', 'red-orange/pizza-like', 1.898e27, 4.838e8, 'It is the fastest spinning planet in the solar system')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  solar_system.add_planet(jupiter)

  prompt =
  'What would you like to do next?
    1. list planets
    2. planet details
    3. exit'

  puts prompt
  input = gets.chomp.downcase

  while input != "exit"

    case input
    when "1", "list planets"
      puts solar_system.list_planets
    when "2", "planet details"
      planet_details(solar_system)
    else
      puts "#{input} is not an option."
    end

    puts prompt
    input = gets.chomp.downcase
  end

  puts "Thank you for using the solar system program!"
end

# # # ... do stuff with planets ...
# # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# #
# # puts earth.name # Earth
# # puts "Color of #{earth.name} is #{earth.color}."
# # puts earth.summary
#
# solar_system = SolarSystem.new('Sol')
#
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# mars = Planet.new('Mars', 'red', 6.39e23, 1.416e8, 'Pieces of Mars have been found on Earth')
# venus = Planet.new('Venus', 'gray-ish', 4.867e24, 6.724e7, 'Second brightest object in the night sky after the Moon')
# jupiter = Planet.new('Jupiter', 'red-orange/pizza-like', 1.898e27, 4.838e8, 'It is the fastest spinning planet in the solar system')
# # eArth = Planet.new('eArth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# # eARth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# solar_system.add_planet(earth)
# solar_system.add_planet(mars)
# solar_system.add_planet(venus)
# solar_system.add_planet(jupiter)
# # solar_system.add_planet(eArth)
# # solar_system.add_planet(eARth)
#
# puts solar_system.planets.class
#
# list = solar_system.list_planets
# puts list
#
# found_planet = solar_system.find_planet_by_name('Earth')
#
# # found_planet is an instance of class Planet
# puts found_planet
# # found_planet.name('Bob')
# puts found_planet.summary
#
# distance = solar_system.distance_between('Venus', 'Jupiter')
# puts "The distance between Venus and Jupiter is #{distance}."
#
# distance = solar_system.distance_between('Jupiter', 'Earth')
# puts "The distance between Jupiter and Earth is #{distance}."

main
