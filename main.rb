require_relative 'planet'
require_relative 'solar_system'

def main

  mercury = Planet.new('Mercury', 'gray-brown', 0.330e24, 57.9e6, 'closest planet to sun')
  puts mercury.summary

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary

  sun = SolarSystem.new('Sun')
  puts sun.add_planet(mercury)
  puts sun.add_planet(earth)



end

main
# this = main
# print this
#
# that = list_planets
# print that
