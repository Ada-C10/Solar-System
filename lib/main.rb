require 'colorize'

require_relative 'planet'
require_relative 'solar_system'

def main
  create_solar_system
  welcome
  planet_details
  continue?
end

def create_solar_system
  @solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  jupiter = Planet.new('Jupiter', 'red', 1.898e27, 7.78e6, 'That red eye tho')

  make_believe = Planet.new('Make Believe', 'turquoise', 3.2e25, 4.21e7, 'I just made this planet up!')

  @solar_system.add_planet(earth)
  @solar_system.add_planet(jupiter)
  @solar_system.add_planet(make_believe)
end

def calculate_distance_between_two_planets
  puts "Let's CALCULATE!".blue
  print "\nFirst Planet Name: "
  first_planet = gets.chomp.downcase
  print "\nSecond Planet Name: "
  second_planet = gets.chomp.downcase

  print_distance_between(first_planet, second_planet)
  continue?
end

def print_distance_between(first_planet, second_planet)
  difference = @solar_system.distance_between(first_planet, second_planet).round(4)
  puts "\nThe distance between #{first_planet} and #{second_planet} is #{difference} km".yellow
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

  create_planet(name, color, mass, distance, fun_fact)

  continue?
end

def create_planet(name, color, mass, distance, fun_fact)
  new_planet = Planet.new(name, color, mass, distance, fun_fact)
  @solar_system.add_planet(new_planet)
end

def continue?
  user_options?
  option = get_user_input
  user_decision(option)
end

def user_options?
  puts "\n- Would you like to learn about another planet?".blue
  puts "(y or n?)".red
  puts "\n- Or would you like to calculate the distance between two planets?".blue
  puts "(type 'distance')".red
  puts "\n- Or would you like to add a planet?".blue
  puts "If so, type any other key!".red
end

def user_decision(option)
  case option
  when "y"
    planet_details
  when "n", 'exit'
    goodbye
  when 'distance'
    calculate_distance_between_two_planets
  else
    add_planet
  end
end

def planet_details
  print_planets_list
  user_input = get_user_input
  planet_options
  correct_planet_entry?(user_input)
  print_planet_summary(user_input)
  continue?
end

def get_user_input
  gets.chomp.downcase
end

def print_planets_list
  list = @solar_system.list_planets
  puts "\n🚀 What planet would you like to learn about? 🚀".blue
  puts list
  print "\nPlease type in a planet: ".blue
end

def print_planet_summary(user_input)
  found_planet = @solar_system.find_planet_by_name(user_input)
  puts found_planet.summary
end

def correct_planet_entry?(user_input)
  until planet_options.include?(user_input.downcase)
    puts "\nInvalid entry. Try again.\n"
    user_input = get_user_input
  end
end

def planet_options
  planet_options = @solar_system.planets.map do |planet|
    planet.name.downcase
  end
  return planet_options
end

def goodbye
  puts "\n~*~***~GOODBYE!~***~*~".yellow
  exit
end

def welcome
  puts "\n~*~*~*~~~**Welcome to The Universe Info Page!**~~~*~*~*~\n".magenta
end

main
