# main.rb
require_relative "lib/planet"
require_relative "lib/solar_system"

def main
  # # ... do stuff with planets ...
  # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  #
  # puts earth.name # Earth
  # puts "Color of #{earth.name} is #{earth.color}."
  # puts earth.summary

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Mars')

  # found_planet is an instance of class Planet
  puts found_planet

  puts found_planet.summary
end

main
