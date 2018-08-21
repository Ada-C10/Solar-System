require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main

  star = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  jupiter = Planet.new('Jupiter', 'white-red-orange-brown', 1.898e27, 483.8, 'Largest planet in the Solar System and is 318 times as massive as Earth')

  star.add_planet(earth)
  star.add_planet(jupiter)

  list = star.list_planets
  puts list

  found_planet = star.find_planet_by_name('granite')
  puts found_planet
  # puts found_planet.summary
end

main
