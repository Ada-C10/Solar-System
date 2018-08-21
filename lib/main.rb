require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 40, 203.20, 'Only planet known to support life')

  pluto = Planet.new('Pluto', 'hot pink', 5032.323, 1.221, 'Is it really a planet?')

  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)

  list = solar_system.list_planets()
  puts list

end


main
