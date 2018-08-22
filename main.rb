require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main

  mercury = Planet.new "Mercury",
                       "dark grey",
                       3.285e23,
                       5.791e7,
                       "has an earth year of about 88 days"

  mars = Planet.new "Mars",
                       "red",
                       6.39e23,
                       2.27e8,
                       "men are in fact, not from here"

  puts mercury.name
  puts mercury.color


  # puts planet2.name
  # puts planet2.color
  #
  # puts mars.summary
  # puts planet2.summary
  solar_system = SolarSystem.new('Sol')
  # puts solar_system
  solar_system.add_planet(mercury)
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list


  find = solar_system.find_planet_by_name('mars')
  puts find

end

main