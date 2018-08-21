require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main
star = SolarSystem.new('Sol')

earth = Planet.new('Tattooine', 'sand dune', 5.972e24, 1.496e8, 'Has two suns and Han shot first.')
mercury = Planet.new('Hoth', 'artic ice', 5.972e24, 1.496e8, 'You can ride wampas here')
venus = Planet.new('Endor', 'forrest green', 5.972e24, 1.496e8, 'Home to Ewoks')
mars = Planet.new('Kamino', 'stormy ocean', 5.972e24, 1.496e8, 'Home to industrial cloning')

star.add_planet(earth)
star.add_planet(mercury)
star.add_planet(venus)
star.add_planet(mars)

list = star.list_planets

found_planet = star.find_planet_by_name('hoth')
puts found_planet.summary
end

main
