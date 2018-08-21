require_relative 'planet'
require_relative 'solar_system'

def main
  pluto = Planet.new("Pluto", "Green", 112.2, 34343.6,"maybe pluto isn't even really a planet!")
  puts pluto.summary

  solar_system = SolarSystem.new('Sol')
  earth = Planet.new("Earth", "Blue", 343535.1, 35655.1, "Earth is on fire!")
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.first.summary
end

main
