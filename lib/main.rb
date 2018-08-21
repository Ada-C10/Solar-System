require_relative 'planet'
require_relative 'solar_system'

def main
  # Create an instance of planet
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9e8, 'Named after Roman god of war, Mars')
  # Create another instance of planet
  venus = earth = Planet.new('Venus', 'white', 5.972e24, 1.08e8, 'Is the second brightest natural object in the sky')

  # Create an instance of SolarSystem
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list
  puts mars.summary
  puts venus.summary

end

main
