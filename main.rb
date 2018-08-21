require "pry"

require_relative "planet"
require_relative "solar_system"


# def provide_solar_system_info()
#   solar_system = SolarSystem.new('Sol')
#
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   venus = Planet.new('Venus', 'white', 99, 100, 'hot hot hot')
#   mercury = Planet.new('Mercury', 'gray', 0.01, 0.02, 'fire and smoke')
#
#   solar_system.add_planet(earth)
#   solar_system.add_planet(venus)
#   solar_system.add_planet(mercury)
# end

def display_menu()
  # provide_solar_system_info()
  return "
  Welcome to the planetarium!
  What would you like to do?
  [1] See which planets  orbit around XXXX?
  [2] View details about a specific planet?
  [3] Add a planet to the list!
  [4] Exit!
  \nPlease enter the number of your selection:
  "
end

# def list_planets()
#   thing = provide_solar_system_info().solar_system.list_planets
#   return thing
# end

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  venus = Planet.new('Venus', 'white', 99, 100, 'hot hot hot')
  mercury = Planet.new('Mercury', 'gray', 0.01, 0.02, 'fire and smoke')

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)

  user_decision = nil

  while user_decision != 4
    # TODO: make methods for each part
    puts display_menu()
    user_decision = gets.chomp.to_i


    if user_decision == 1
      puts solar_system.list_planets

    elsif user_decision == 2
      puts "Which planet would you like to learn more about? "
      planet = gets.chomp

      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary

    elsif user_decision == 3
      puts "What is the name of the planet?"
      add_planet_name = gets.chomp.downcase
      puts "What color is the planet?"
      add_planet_color = gets.chomp
      puts "What is the planet's mass (in kg)?"
      # TODO: float verify
      add_planet_mass = gets.chomp
      puts "How far is the planet from the sun (in km)? "
      add_planet_dist = gets.chomp
      puts "What is one fun fact about this planet?"
      add_planet_fun_fact = gets.chomp

      # TODO: change var name????
      add_planet = Planet.new(add_planet_name.capitalize, add_planet_color, add_planet_mass, add_planet_dist, add_planet_fun_fact)

    else
      puts "Oh no! Please enter a valid choice: "
      user_decision = 4
    end
  end




    # puts solar_system.list_planets
    #
    #
    # found_planet = solar_system.find_planet_by_name('Earth')
    #
    # puts found_planet
    #
    # puts found_planet.summary





end

main()
