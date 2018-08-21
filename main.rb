require_relative 'planet'
require_relative 'solar_system'

def main
  jupiter = Planet.new("jupiter", "colorful", 4.0, 2.2, "yellow i think")
  earth = Planet.new("earth", "blue", 1.2, 149.6, "the third planet from the sun")
  saturn = Planet.new("saturn", "grey", 5.683, 1.43, "the least dense planet in the solar system")
# puts "Earth is #{earth.fun_fact}, while Saturn is #{saturn.fun_fact}"
# puts saturn.summary
  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)
  solar_system.add_planet(jupiter)
  puts list_of_planets = solar_system.list_planets

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet.summary 
end

p main


# solar_system = SolarSystem.new("Sol")
# earth = Planet.new("Earth", "blue", 1.0, 3.0, "third from the sun")
# saturn = Planet.new("Saturn", "grey", 5.683, 1.43, "the least dense planet in the solar system")
# jupiter = Planet.new("Jupiter", "colorful", 4.0, 2.2, "yellow i think")
#

# solar_system.add_planet(earth)
# solar_system.add_planet(saturn)
# solar_system.add_planet(jupiter)
# list_of_planets = solar_system.list_planets
