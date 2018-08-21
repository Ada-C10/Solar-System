require_relative 'planet'
require_relative 'solar_system'

def main
# within main - create objects and test class (cookie cutter) methods here. This is the cookie tray where you test them out
  mercury = Planet.new('Mercury', 'gray-brown', 0.330e24, 57.9e6, 'closest planet to sun')
  puts mercury.summary

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary

# create another object
  sun = SolarSystem.new('Sun')
  #.name or .color are like methods to retrieve portions of an object
  #on this object - call a method, with a parameter of another object
  sun.add_planet(mercury.name)
  sun.add_planet(earth.name)

  puts sun.list_planets



end

main
# this = main
# print this
#
# that = list_planets
# print that
