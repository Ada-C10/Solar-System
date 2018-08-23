require_relative 'planet'
require_relative 'solar_system'
require 'pry'
require 'colorize'

# WAVE 1
# def main
#
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#
#   puts earth.summary
# end
#
# main

# # WAVE 2
# # Creating a solar system
# solar_system = SolarSystem.new('Sol')
#
# # Creating planet earth
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# # Adding planet earth to the list
# solar_system.add_planets(earth)
#
# # creating planet mars
# mars = Planet.new('Mars', 'red', 6.420e23, 2.279e8, 'It is the second smallest planet')
#
# # adding planet mars to the list
# solar_system.add_planets(mars)
#
# # Creating planent jupiter
# jupiter = Planet.new('Jupiter', 'pearl', 1.898e27, 7.785e8, 'The largest planet in the solar system')
#
# # Adding planet jupiter to the list
# solar_system.add_planets(jupiter)
# list = solar_system.list_planets
# puts list
#
# found_planet = solar_system.find_by_name('jupiter')
#
#
# puts found_planet.summary
# distance_earth_to_mars = solar_system.distance_between('earth', 'mars')
#
# puts distance_earth_to_mars

# WAVE 3 Putting all the methods from wave 1 and wave 2
def main
  # Creating a solar systeme
  solar_system = SolarSystem.new('Sun')

  # Creating planet earth
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  # Adding planet earth to the list
  solar_system.add_planets(earth)

  # creating planet mars
  mars = Planet.new('Mars', 'red', 6.420e23, 2.279e8, 'It is the second smallest planet')

  # adding planet mars to the list
  solar_system.add_planets(mars)

  # Creating planent jupiter
  jupiter = Planet.new('Jupiter', 'pearl', 1.898e27, 7.785e8, 'The largest planet in the solar system')

  # Adding planet jupiter to the list
  solar_system.add_planets(jupiter)

  message_to_user(solar_system)

end

# Method for prompting the user to chose an option
def message_to_user(solar_system)
  # Message to users
  list = solar_system.list_planets

  welcome_message = "How would you like to proceed from the options listed below? \nEnter 1 to list planets, \nEnter 2 to add a new planet, \nEnter 3 to find the distance between two planets, \nEnter 4 to the exit program"
  puts welcome_message
  user_input = gets.chomp.to_i

# controled loop to get what the user wants to do regarding program
  while user_input < 4 do
    if user_input == 1
      puts "#{list}".colorize(:light_red)
      planet_details(solar_system)
      puts welcome_message
      user_input = gets.chomp.to_i

    elsif user_input == 2
      add_planets(solar_system)
      puts welcome_message
      user_input = gets.chomp.to_i

    elsif user_input == 3
      distance_calculator(solar_system)
      puts welcome_message
      user_input = gets.chomp.to_i
    end
  end
  if user_input == 4
    exit
  end
end

# Defining method that gets the detail of a planet that was requested
def planet_details(solar_system)

  puts "Which planet do you want to learn about."
  inputted_planet = gets.chomp.downcase

  found_planet = solar_system.find_by_name(inputted_planet)

  puts found_planet.summary.colorize(:green)

end

# Defining a method to add a new planet to the solar system
def add_planets(solar_system)

  puts "If you wish to enter information about a planet, please have the following information ready. The planet name, color, mass(kg), distance from the sun(km), and fun facts."

  puts "What's the planet name?"
  new_planet = gets.chomp.capitalize

  puts "What's its color?"
  new_color = gets.chomp.capitalize

  puts "What's the planet's Mass in Kg?"
  new_mass = gets.chomp.to_f

  puts "Whats the planet's distance from the sun in Km?"
  new_distance = gets.chomp.to_f

  puts "What fun facts does the planet have?"
  new_fun_facts = gets.chomp

  new_planet = Planet.new(new_planet, new_color, new_mass, new_distance, new_fun_facts)

  solar_system.add_planets(new_planet)

  message_to_user(solar_system)
end

# Defining a method to calculate the distance between two planets
def distance_calculator(solar_system)
  list = solar_system.list_planets

  puts "Here are the list of planets available"
  puts "#{list}"
  puts "Pick two planets you want to caluclate the distance between them: "
  puts "Planet 1: "
  planet1 = gets.chomp

  puts "Planet 2: "
  planet2 = gets.chomp

  distance = solar_system.distance_between(planet1, planet2)

  puts "The distance between #{planet1} and #{planet2} is: #{distance} km"

  message_to_user(solar_system)
end

main
