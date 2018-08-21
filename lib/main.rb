require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new("The Sun")

  mercury = Planet.new("Mercury", "dark grey", 3.285e23, 57910000,
    "Closest planet to The Sun")
  venus = Planet.new("Venus", "pale yellow", 4.867e24, 108200000,
    "Named after the goddess of love")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8,
    "Only planet known to support life")
  mars = Planet.new("Mars", "red", 6.39e23, 227900000,
    "Believed to have once had water")
  jupiter = Planet.new("Jupiter", "orange-ish", 1.898e27, 778500000,
    "Largest planet in the solar system")

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  input = ""
  until input.casecmp? "exit"
    print "What would you like to do next?
    1. 'list' to list planets
    2. 'details' to get details about a specific planet
    3. 'add' to add a planet to the solar system
    4. 'exit' to end the program
    Enter one of the above: "
    input = gets.chomp

    if input.casecmp? "list"
      puts "\n#{solar_system.list_planets}\n"
    elsif input.casecmp? "details"
      print "\nEnter planet name: "
      planet_name = gets.chomp
      solar_system.find_planet_by_name(planet_name).each do |planet|
        puts "\n#{planet.summary}\n\n"
      end
    elsif input.casecmp? "add"
      print "\nEnter planet name: "
      planet_name = gets.chomp
      print "Enter #{planet_name}'s color: "
      planet_color = gets.chomp
      print "Enter #{planet_name}'s mass in kg: "
      planet_mass = gets.to_f
      print "Enter distance between #{planet_name} and the sun in km: "
      planet_distance = gets.to_f
      print "Enter a fun fact about #{planet_name}: "
      planet_fact = gets.chomp
      solar_system.add_planet(Planet.new(planet_name, planet_color, planet_mass,
        planet_distance, planet_fact))
    elsif !(input.casecmp? "exit")
      print "\nInvalid command. "
    end
  end
end

# Wave 1 and 2 version of main:
#
# def main
#   # Create two Planets and a SolarSystem
#   earth = Planet.new("Earth", "blue-green", 5.972*10**24,
#     1.496*10**8, "Only planet known to support life")
#   jupiter = Planet.new("Jupiter", "orange-ish", 1.898*10**27, 778500000,
#     "Largest planet")
#   earth2 = Planet.new("earth", "green-blue", 5.972*10**24,
#     1.496*10**8, "twin")
#   solar_system = SolarSystem.new("Sun")
#
#   # Add earth and jupiter to solar_system
#   solar_system.add_planet(earth)
#   solar_system.add_planet(jupiter)
#   solar_system.add_planet(earth2)
#
#   # Print outputs
#   puts earth.summary
#   puts jupiter.summary
#   puts solar_system.list_planets
#
#   # Finds all Planets in solar_system with a given name and prints output
#   found_planet = solar_system.find_planet_by_name("earth")
#   found_planet.each { |planet| puts planet.summary }
#
#   # Calculates and prints the distance between Earth and Jupiter
#   distance = solar_system.distance_between("earth", "jupiter")
#   puts "#{distance}km"
# end

main
