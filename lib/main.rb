require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new(5)

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  puts solar_system.find_planet_by_name('Earth').summary
end

main
