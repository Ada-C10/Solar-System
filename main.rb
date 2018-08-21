require "pry"

require_relative "planet"
require_relative "solar_system"

def main

    solar_system = SolarSystem.new('Sol')

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    venus = Planet.new('Venus', 'white', 99, 100, 'hot hot hot')


    solar_system.add_planet(earth)
    solar_system.add_planet(venus)
    puts solar_system.list_planets


    found_planet = solar_system.find_planet_by_name('Earth')

    puts found_planet

    puts found_planet.summary





end

main()
