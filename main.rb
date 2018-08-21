require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  zeb = Planet.new('Zebulon', 'rainbow', 2.972e24, 19.496e8, 'Where the unicorns play')
  solar_system.add_planet(zeb)
  swil = Planet.new('Swilly', 'orange-tabby', 1.972e24, 30.496e8, 'Where Chelsey keeps her many space cats')
  solar_system.add_planet(swil)

  list = solar_system.list_planets
  puts list
  found_planet = solar_system.find_planet_by_name('swilly')
  puts found_planet
  #puts found_planet.name
  #puts found_planet.summary
end

main
