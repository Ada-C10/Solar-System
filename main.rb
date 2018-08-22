# main.rb
require_relative 'planet'
require_relative 'solar_system.rb'
# require 'pry'

def main
  # mercury = Planet.new("Mercury", "grey", 3.3011e23, 5.79e7, "is named after a Roman God")
  #
  # venus = Planet.new("Venus", "yellowish-white", 4.87e24, 1.082e8, "may have had oceans in the past")
  #
  # puts "#{mercury.name} #{mercury.fun_fact}."
  #
  # puts "#{venus.name} #{venus.fun_fact}."
  #
  # puts mercury.summary
  #
  # puts venus.summary

  solar_system = SolarSystem.new('Sol')

  mercury = Planet.new("Mercury", "grey", 3.3011e23, 5.79e7, "is named after a Roman God")
  solar_system.add_planet(mercury)

  venus = Planet.new("Venus", "yellowish-white", 4.87e24, 1.082e8, "may have had oceans in the past")
  solar_system.add_planet(venus)

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is the only planet known to support life')
  solar_system.add_planet(earth)

  mars = Planet.new('Mars', 'reddish', 6.42e23, 2.279e8, 'has a large amount of underground ice')
  solar_system.add_planet(mars)

  jupiter = Planet.new('Jupiter', 'white-orange', 1.8982e27, 7.786e8, 'has at least 79 moons')
  solar_system.add_planet(jupiter)

  saturn = Planet.new('Saturn', 'pale-gold', 5.6834e26, 1.433e9, 'has a ring system made of ice, rock, and dust')
  solar_system.add_planet(saturn)

  uranus = Planet.new('Uranus', 'pale-blue', 8.68e25, 2.873e9, 'is visible to the naked eye')
  solar_system.add_planet(uranus)

  neptune = Planet.new('Neptune', 'pale-blue', 1.03e26, 4.495e9, 'is the farthest planet from the Sun that we know of in our solar system')
  solar_system.add_planet(neptune)

  list = solar_system.list_planets


  loop do
    print "What would you like to do next? \n(Enter 'list planets', 'planet details', or 'exit'.) "
    user_choice = gets.chomp.downcase

    until user_choice == "list planets" || user_choice == "exit" || user_choice == "planet details"
      puts "Please enter a valid choice: list planets, planet details, or exit."
      user_choice = gets.chomp.downcase
    end

    # Make separate method?
    case user_choice
    when "list planets"
      puts list
    when "planet details"
      puts solar_system.find_planet_by_name.summary
    when "exit"
      exit
    end
  end


  found_planet = solar_system.find_planet_by_name('Earth')

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...
end

main
