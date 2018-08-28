require_relative 'planet'
require_relative 'solar_system'
require 'pry'


def ask_and_print_planet_details(solar_system)
  puts "Which planet would you like to learn about?"
  user_choice_planet = gets.chomp!
  found_planet = solar_system.find_planet_by_name(user_choice_planet)
  while found_planet == nil
    puts "Which planet would you like to learn about?"
    user_choice_planet = gets.chomp!
    found_planet = solar_system.find_planet_by_name(user_choice_planet)
  end
    found_planet = solar_system.find_planet_by_name(user_choice_planet)
    puts found_planet.summary
end

def ask_and_add_planet_to_list(solar_system)
  puts "What is the planet name?"
  name = gets.chomp!
  puts "What is the color of #{name}?"
  color = gets.chomp!
  puts "What is the mass of #{name}?"
  mass = gets.chomp.to_f
  until mass > 0
    puts "ERROR: The mass must be greater than 0, what is the mass of #{name}?"
    mass = gets.chomp.to_f
  end
  puts "What is the distance of #{name} from the sun?"
  distance = gets.chomp.to_f
  until distance > 0
    puts "ERROR: The distance must be greater than 0, what is the distance of #{name}?"
    distance = gets.chomp.to_f
  end
  puts "What is a fun fact about #{name}?"
  fun_fact = gets.chomp!
  user_planet = Planet.new(name, color, mass, distance, fun_fact)
  solar_system.add_planet(user_planet)
end

def main
  #create solar system
  solar_system = SolarSystem.new("Sol")
  #create planets
  jupiter = Planet.new("jupiter", "colorful", 4.0, 2.2, "the yellowish one")
  earth = Planet.new("earth", "blue", 1.2, 149.6, "the third planet from the sun")
  saturn = Planet.new("saturn", "grey", 5.683, 1.43, "the least dense planet in the solar system")
  #add planets to solar system
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)
  solar_system.add_planet(jupiter)
  options = ["exit", "list planets", "planet details", "add planet"]
  puts "Welcome to #{solar_system.star_name}!"
  action = ""
  #loop that repeatedly asks user what to do next
  until action == "exit"
    puts "What do you want to do next? choose one: #{options}"
    action = gets.chomp!
    case action
    when "list planets"
      puts list_of_planets = solar_system.list_planets
    when "planet details"
      ask_and_print_planet_details(solar_system)
    when "add planet"
      ask_and_add_planet_to_list(solar_system)
    end
  end
end

p main
