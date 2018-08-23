require_relative 'planet'
require_relative 'solar_system'

require 'colorize'

def main
  @solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  jupiter = Planet.new('Jupiter', 'red', 1.898e27, 7.78e6, 'That red eye tho')

  make_believe = Planet.new('Make Believe', 'turquoise', 3.2e25, 4.21e7, 'I just made this planet up!')

  @solar_system.add_planet(earth)
  @solar_system.add_planet(jupiter)
  @solar_system.add_planet(make_believe)

  planet_details
  continue?
end

def calculate_distance_between_two_planets
  puts "Let's CALCULATE!".blue
  print "\nFirst Planet Name: "
  first_planet = gets.chomp.downcase
  print "\nSecond Planet Name: "
  second_planet = gets.chomp.downcase

  difference = @solar_system.distance_between(first_planet, second_planet).round(4)
  puts "\nThe distance between #{first_planet} and #{second_planet} is #{difference} km".yellow
  continue?
end

def add_planet
  print "\nPlanet Name: "
  name = gets.chomp
  print "\nPlanet color: "
  color = gets.chomp
  print "\nPlanet Mass (kg): "
  mass = gets.chomp.to_i
  print "\nPlanet Distance from Sun (km): "
  distance = gets.chomp.to_i
  print "\nFun Fact: "
  fun_fact = gets.chomp

  new_planet = Planet.new(name, color, mass, distance, fun_fact)
  @solar_system.add_planet(new_planet)

  continue?
end

def continue?
  puts "\n- Would you like to learn about another planet?".blue
  puts "(y or n?)".red
  puts "\n- Or would you like to calculate the distance between two planets?".blue
  puts "(type 'distance')".red
  puts "\n- Or would you like to add a planet?".blue
  puts "If so, type any other key!".red
  option = gets.chomp.downcase

  case option
  when "y"
    planet_details
  when "n", 'exit'
    exit
  when 'distance'
    calculate_distance_between_two_planets
  else
    add_planet
  end
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
  continue?
end

main
