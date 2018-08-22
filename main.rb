require_relative 'planet'
require_relative 'solar_system'

def main
  #create solar system
  solar_system = SolarSystem.new("Sol")
  #create planets
  jupiter = Planet.new("jupiter", "colorful", 4.0, 2.2, "yellow i think")
  earth = Planet.new("earth", "blue", 1.2, 149.6, "the third planet from the sun")
  saturn = Planet.new("saturn", "grey", 5.683, 1.43, "the least dense planet in the solar system")
  #add planets to solar system
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)
  solar_system.add_planet(jupiter)
  # create loop that repeatedly asks user what to do next
  puts "What do you want to do next? choose one: list planets, exit, planet details, add planet"
  action = gets.chomp!
  until action == "exit"
    if action == "list planets"
      puts list_of_planets = solar_system.list_planets
      puts "What do you want to do next? choose one: list planets, exit, planet details, add planet"
      action = gets.chomp!
    elsif action == "planet details"
      puts "Which planet would you like to learn about?"
      user_choice_planet = gets.chomp!
      found_planet = solar_system.find_planet_by_name(user_choice_planet)
      puts found_planet.summary
      puts "What do you want to do next? choose one: list planets, exit, planet details, add planet"
      action = gets.chomp!
    elsif action == "add planet"
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
      puts "What do you want to do next? choose one: list planets, exit, planet details, add planet"
      action = gets.chomp!
    end
  end
  list_of_planets = solar_system.list_planets
end
  # puts list_of_planets = solar_system.list_planets
  #
  # found_planet = solar_system.find_planet_by_name('Earth')
  # puts found_planet.summary


p main

# puts "Earth is #{earth.fun_fact}, while Saturn is #{saturn.fun_fact}"
# puts saturn.summary

# solar_system = SolarSystem.new("Sol")
# earth = Planet.new("Earth", "blue", 1.0, 3.0, "third from the sun")
# saturn = Planet.new("Saturn", "grey", 5.683, 1.43, "the least dense planet in the solar system")
# jupiter = Planet.new("Jupiter", "colorful", 4.0, 2.2, "yellow i think")
#

# solar_system.add_planet(earth)
# solar_system.add_planet(saturn)
# solar_system.add_planet(jupiter)
# list_of_planets = solar_system.list_planets
