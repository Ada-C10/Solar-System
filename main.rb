require 'pry'
require_relative 'planet'
require_relative 'solar_system'

def main


  solar_system = SolarSystem.new('Sun')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.433e9, 'Has 150 moons and smaller moonlets')

  venus = Planet.new('Venus', 'yellow', 4.867e24, 1.082e8, 'One day is longer than one year on this planet')

  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)

  puts "Welcome to the solar system! To list the planets, type 'list'. To exit, type 'exit'."
  input = gets.chomp
  until input == 'list'|| input == 'exit'
    puts "Please type 'L' or 'E'."
    input = gets.chomp
  end

  if input == "list"
    puts "#{solar_system.list_planets}"
  else
    exit
  end

  found_planet = solar_system.find_planet_by_name('earth')

  # puts list
  # puts found_planet
  # puts found_planet.summary
end

main
