require_relative 'planet'
require_relative 'solar_system'

def main


  solar_system = SolarSystem.new('Sol')

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The only planet known to support life")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "orange", 6.39e23, 2.279e8, "Suspected to have traces of water")
  solar_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", "white, red, orange, brown, and yellow", 1.898e27, 7.785e8, "Has rings")
  solar_system.add_planet(jupiter)

  # puts earth.name #Earth
  # puts earth.fun_fact #Only known planet to support life
  # puts earth.color #blue-green
  #
  # puts mars.name
  # puts mars.distance_from_sun_km
  # puts mars.color
  # puts mars.fun_fact

  # puts earth.summary
  # puts mars.summary
  # puts jupiter.summary
  puts "Planets orbiting #{solar_system.star_name}:"
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.name
  puts found_planet.summary



end

main
