require_relative 'planet'
require_relative 'solar_system'

def main()
earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
 puts earth.name
 puts earth.summary
end

main


#create an instance of SolarSystem

solar_system = SolarSystem.new('Sol')

earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")

solar_system.add_planets(earth)

mars = Planet.new("Mars", "red", 6.972e24, 2.496e8, "Only planet known to support Matt Damon")

solar_system.add_planets(mars)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('mars')
puts found_planet
#puts found_planet.summary
