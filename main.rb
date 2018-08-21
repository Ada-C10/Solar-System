require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  mercury = Planet.new('Mercury','gray', 3.3022e23, 57900000, 'Mercury is slightly smaller than Earth’s moon and is extremely hot. As in 850 Fahrenheit or so.' )
  venus = Planet.new('Venus', 'red', 4.8685e24, 108200000, '1 day on Venus is the equivalent of 241 Earth days.')

  solar_system = SolarSystem.new('Sol')

  #earth = Planet.new('Earth', ...)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)

  list = solar_system.list_planets
  puts list

end

main
