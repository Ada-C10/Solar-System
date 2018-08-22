require_relative 'planet'
require_relative 'solar_system'

#TESTING: DRIVER CODE
# solar_system = SolarSystem.new('Sol')
#
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# mars = Planet.new('Mars', 'red', 10, 100, 'Martians')
#
# solar_system.add_planet(earth)
# solar_system.add_planet(mars)
#
# list = solar_system.list_planets
# puts list
# # => Planets orbiting Sol
# # => 1.  Earth
#
# found_planet = solar_system.find_planet_by_name('Earth')
#
# # found_planet is an instance of class Planet
# puts found_planet
# # => #<Planet:0x00007fe7c2868ee8>
#
# puts found_planet.summary
# # => Earth is a blue-green planet ...


#planet details method
def list_details(solar_system, planet_name)

  if planet_name
    planet = solar_system.find_planet_by_name(planet_name)
    return planet.summary
  end

end

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 10, 100, 'Martians')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  input = "START"
  while input != "EXIT"

    puts "\nChoose an option: \n\n1. LIST PLANETS\n2. PLANET DETAILS\n3. EXIT"
    input = gets.chomp.upcase

    if input.include?("LIST")

      puts solar_system.list_planets

    elsif input.include?("DETAILS")

      puts "Which planet?"
      planet_name = gets.chomp.upcase
      puts list_details(solar_system, planet_name)

    end
  end
end

main
