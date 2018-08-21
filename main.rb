require_relative 'planet'
require_relative 'solar_system'

def main
  #... Do stuff with planets ..
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  saturn = Planet.new('Saturn','rust',5.683e26,1.433e9,"Saturn has at least 53 moons, 9 moons awaiting confirmation")
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9e6, 'The planet is named after Mars, the Roman god of war. ')
  # puts earth.name
  # puts earth.color
  # puts saturn.name
  # puts saturn.color
  # puts earth.summary
  # puts saturn.summary
  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("EaRth")
  puts found_planet

  puts found_planet.summary


end

main

#earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#saturn = Planet.new('Saturn','rust',5.683e26,1.433e9,"Saturn has at least 53 moons, 9 moons awaiting confirmation")
