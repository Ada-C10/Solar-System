require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'pry'

def main
  solar_system = SolarSystem.new('Sol')

  mars = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
  jupiter = Planet.new('Jupiter', 'white-red-orange-brown-yellow', 1.898e28, 7.78e8, 'it is massive - 2.5 more massive than all of the other planets in the Solary System combined')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(earth)

  command = ''
  while command != 5 do
    puts "What would you like to do next? Enter the number of your choice."
    puts "1. List the planets"
    puts "2. See planet details"
    puts "3. Add planet"
    puts "4. See distance between two planets"
    puts "5. Exit"
    command = gets.chomp.to_i

    case command
    when 1
      puts "#{solar_system.list_planets}\n"
    when 2
      solar_system.user_planet_details
    when 3
      solar_system.user_added_planet
    when 4
      solar_system.user_wanted_distance
    when 5
      break
    else
      puts "That is not a valid choice.\n\n"
    end
  end
end

main
