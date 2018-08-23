require_relative 'planet'
require_relative 'solar_system'

require 'pry'

def main
  @solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  jupiter = Planet.new('Jupiter', 'red', 1.898e27, 7.78e6, 'That red eye tho')

  make_believe = Planet.new('Make Believe', 'turquoise', 3.2e25, 4.21e7, 'I just made this planet up!')

  @solar_system.add_planet(earth)
  @solar_system.add_planet(jupiter)
  @solar_system.add_planet(make_believe)

  planet_details

end

def planet_details
  list = @solar_system.list_planets

  puts "What planet would you like to learn about?"
  puts list
  puts "\nPlease type in a planet"
  user_input = gets.chomp.downcase

  planet_options  = @solar_system.planets.map do |planet|
    planet.name.downcase
  end

  until planet_options.include?(user_input.downcase)
    puts "\nInvalid entry. Try again.\n"
    user_input = gets.chomp.downcase
  end

  found_planet = @solar_system.find_planet_by_name(user_input)
  puts found_planet.summary

end

main
