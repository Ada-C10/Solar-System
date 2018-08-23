require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name
  puts earth.color
  puts earth.summary

  mars = Planet.new('Mars', 'red', 6.39e23, 227.9, 'Fun fact about Mars')
  puts mars.name
  puts mars.color
  puts mars.summary

  solar_system = SolarSystem.new('Sun')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet.summary

end

main
