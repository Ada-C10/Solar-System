require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', 'red', 4.454e90, 3.45e9, 'Mercury is a planet')
  venus = Planet.new('Venus', 'orange', 6.43e93, 4.12e9, 'Venus is a planet')
  mars = Planet.new('Mars', 'red', 4.238e82, 2.19e4, 'Mars is a planet')

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list
end

main
