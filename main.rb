require 'pry'
require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.433e9, 'Has 150 moons and smaller moonlets')

  solar_system = SolarSystem.new('Sun')

  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)

  list = solar_system.list_planets

  found_planet = solar_system.find_planet_by_name('earth')

  puts list
  puts found_planet
  puts found_planet.summary


end

main
