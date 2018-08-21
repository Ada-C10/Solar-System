require_relative 'planet'
require_relative 'solar_system'

def main
  # Create an instance of planet
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9e8, 'Named after Roman god of war, Mars')
  # Create another instance of planet
  venus = earth = Planet.new('Venus', 'white', 5.972e24, 1.08e8, 'Is the second brightest natural object in the sky')

  # Create an instance of SolarSystem
  solar_system = SolarSystem.new('Sol')

  # ADDING planets to solar system
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  # Creating a list of planets
  list = solar_system.list_planets
  # Printing planet list
  puts list

  # Printing planet summaries
  puts mars.summary
  puts venus.summary

  # Checking if planet is in solar system
  found_planet = solar_system.find_planet_by_name('Mars')
  puts found_planet
  puts found_planet.summary
end

main
