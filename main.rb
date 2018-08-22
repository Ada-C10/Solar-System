require_relative 'planet'
require_relative 'solar_system'

def main
# within main - create objects and test class (cookie cutter) methods here. This is the cookie tray where you test them out
  zion = Planet.new('Zion', 'blue-gray', 0.330e24, 57.9e6, 'it is the home planet to hackers who have escaped the Matrix')
  puts zion.summary
  puts zion.class

  wakanda = Planet.new('Wakanda', 'black', 5.972e24, 1.496e8, 'it is the home planet of descendants from afro-futuristic societies')
  puts wakanda.summary

  redhot = Planet.new('Redhot', 'red', 0.732e24, 64.466e8, 'it is known as \'Big Red\' with an atmosphere that smells of anise seeds')

  rightbellhooks = Planet.new('Rightbellhooks', 'brown', 0.702e69, 61.986e4, 'Queerest teraformed planet in the next three galaxies')

  arcmoon = Planet.new('Arcmoon', 'white', 2.132e09, 5.538e6, 'has an atomosphere that gives all conscience beings telepathic abilities')
# create another object
  horus = SolarSystem.new('Horus')
  #.name or .color are like methods to retrieve portions of an object
  #on this object - call a method, with a parameter of another object
  horus.add_planet(zion)
  horus.add_planet(wakanda)

  puts horus.list_planets

  puts horus.find_planet_by_name("Zion")

end

main
# this = main
# print this
#
# that = list_planets
# print that
