require_relative 'planet'
require_relative 'solar_system'

def main
  neptune = Planet.new('Neptune', 'blue', 1050.9318, 4498252900, 'farthest known planet from the Sun in the Solar System')
  puts neptune.color
  puts neptune.summary

  saturn = Planet.new('Saturn', 'yellowish-brown', 5.6834e26, 1433449370, 'famous for rings')
  puts saturn.color
  puts saturn.summary

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  solar_system.add_planet(neptune)
  solar_system.add_planet(saturn)
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  # puts found_planet
  # puts found_planet.summary

  dist_between = solar_system.distance_between(neptune, saturn)
  puts dist_between
end

main
