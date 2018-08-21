require_relative 'planet'
require_relative 'solar_system'

# WAVE 1
def main

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  puts earth.summary
end

main

############################################
# WAVE 2
# Creating a solar system
solar_system = SolarSystem.new('Sol')

# Creating planet earth
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# Adding planet earth to the list
solar_system.add_planets(earth)

# creating planet mars
mars = Planet.new('Mars', 'red', 6.420e23, 2.279e8, 'It is the second smallest planet')

# adding planet mars to the list
solar_system.add_planets(mars)

# Creating planent jupiter
jupiter = Planet.new('Jupiter', 'blue-green', 1.898e27, 7.785e8, 'The largest planet in the solar system')

# Adding planet jupiter to the list
solar_system.add_planets(jupiter)

###########################################

list = solar_system.list_planets
puts list

found_planet = solar_system.find_by_name('jupiter')


puts found_planet.summary

# distance_earth_to_mars = solar_system.distance_between('earth', 'mars')
#
# puts distance_earth_to_mars
