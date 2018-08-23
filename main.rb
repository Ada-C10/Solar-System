require_relative 'planet'
require_relative 'solar_system'

#### wave 1
def main
 earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')


mars = Planet.new('Mars', 'red', 6.39e23, 1.524e8, 'Named after the Roman god of war')

#### wave 2

solar_system = SolarSystem.new('Sol')
solar_system.add_planet(earth)
solar_system.add_planet(mars)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('Earth')
puts found_planet
puts found_planet.summary

end

main
