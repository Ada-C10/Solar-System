require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, 'May have previously held water')
  uranus = Planet.new('Uranus', 'light-blue', 8.6810e25, 2.871e8, 'First planet discovered by telescope')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(uranus)

  
end

main
