require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'pry'

def print_distance (solar_system)
  print "Enter first planet: "
  planet_one = gets.chomp.capitalize
  print "Enter second planet: "
  planet_two = gets.chomp.capitalize
  distance = solar_system.distance_between(planet_one, planet_two)
  puts "The distance between #{planet_one} and #{planet_two} is #{'%.2f' % distance} km.\n\n"
end

def add_planet_to_list (solar_system)
  print "What is the name of the planet? "
  name = gets.chomp.capitalize
  print "What color is the planet? "
  color = gets.chomp
  print "What is the mass in kg? "
  mass = gets.chomp.to_f
  print "What is the distance from the sun? "
  distance_from_sun = gets.chomp.to_f
  print "Name one fun fact about this planet: "
  fun_fact = gets.chomp

  new_planet = Planet.new(name, color, mass, distance_from_sun, fun_fact)
  solar_system.add_planet(new_planet)
end

def print_planet_details(solar_system)
  print "What is the name of the planet you wish to learn about? "
  planet_name = gets.chomp
  found_planet = solar_system.find_planet_by_name(planet_name)
  puts "#{found_planet[0].summary}\n\n"
end

def main
  solar_system = SolarSystem.new('Sol')

  mars = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
  jupiter = Planet.new('Jupiter', 'white-red-orange-brown-yellow', 1.898e28, 7.78e8, 'it is massive - 2.5 more massive than all of the other planets in the Solary System combined')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(earth)

  keep_looping = true
  while keep_looping do
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
      print_planet_details(solar_system)
    when 3
      add_planet_to_list(solar_system)
    when 4
      print_distance(solar_system)
    when 5
      break
    else
      puts "That is not a valid choice.\n\n"
    end
  end
end

main
