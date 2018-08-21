require_relative 'planet'
require_relative 'solar_system'

def main

  # Planet Class objects
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  planet_soul = Planet.new('Meow', 'purple', 6.22e34, 1.23e9, 'Filled with lots of cats')

  # Solar System Class objects
  solar_system = SolarSystem.new('Sun')
  solar_system.add_planets(earth)
  solar_system.add_planets(planet_soul)
  list = solar_system.list_planets

  # Output things to main
  # puts earth.summary
  # puts planet_soul.summary
  puts list

  found_planet = solar_system.find_planet_by_name(earth)
  puts found_planet
  puts found_planet.summary


end

main
