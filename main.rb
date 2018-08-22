require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "It\'s the only planet known to support life\n")
  puts earth.name
  puts earth.color
  puts earth.summary

  puts

  venus = Planet.new("Venus", "yellowish white", 4.867e24, 6.724e7, "It\'s the second brightest object in the night sky after the Moon\n")
  puts venus.name
  puts venus.color

  sun = SolarSystem.new("Sol")
  sun.add_planet(earth)
  sun.add_planet(venus)

  list = sun.list_planets
  puts list

  puts
  found_planet_name = sun.find_planet_by_name("Earth") #input: string, #output: string
  puts found_planet_name
  puts found_planet_name.summary
end

main
