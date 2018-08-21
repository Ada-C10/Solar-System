require_relative 'planet'
require_relative 'solar_system'

def main
  mars = Planet.new("Mars","reddish-brown", 6.39e23, 2.279e8, "Named after a mythological figure - the Roman god of war"  )
  jupiter = Planet.new("Jupiter", "shades of white, brown, and yellow", 1.898e27, 7.785e8, "It does not have a true surface, as the planet is mostly swirling gases and liquids")

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  list = solar_system.list_planets

  puts "Hello!"
  puts "Would you like to see the planets in the solar system Sol?"
  puts "Enter 'y'to see a list or 'n' to exit"
  user_input = gets.chomp.strip.downcase
  while user_input != 'y' && user_input != 'n'
    puts "Invalid entry, please try again"
    user_input = gets.chomp.strip.downcase
  end

  if user_input == 'y'
    puts list
  elsif
    user_input == 'n'
    puts "Thank you for playing."
    exit
  end



  #
  # solar_system.add_planet(mars)
  # solar_system.add_planet(jupiter)
  # list = solar_system.list_planets
  # found_planet = solar_system.find_planet_by_name("jUPiTer")
  # puts found_planet
  # puts found_planet.summary

end

main
