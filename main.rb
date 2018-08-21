require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It\'s the only planet known to support life')
  puts earth.name
  puts earth.color

  puts

  venus = Planet.new('Venus', 'yellowish white', 4.867e24, 6.724e7, 'It\'s the second brightest object in the night sky after the Moon')
  puts venus.name
  puts venus.color

  puts

  sun = SolarSystem.new("Sol")
  sun.add_planet(earth)
  sun.add_planet(venus)

  list = sun.list_planets
  puts list
end

main
