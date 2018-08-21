require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'pry'

def main
  mercury = Planet.new('Mercury','gray', 3.3022e23, 57900000, 'Mercury is slightly smaller than Earth’s moon and is extremely hot. As in 850 Fahrenheit or so.' )
  venus = Planet.new('Venus', 'red', 4.8685e24, 108200000, '1 day on Venus is the equivalent of 241 Earth days.')
  earth = Planet.new('Earth', 'blue', 5.9736e24, 149600000, 'Earth is the only planet, that we know of, that can maintain and support life.')
  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...

end

main
