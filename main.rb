require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  solar_system = SolarSystem.new('Sol')

  mars = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
  jupiter = Planet.new('Jupiter', 'white-red-orange-brown-yellow', 1.898e28, 7.78e8, 'it is massive - 2.5 more massive than all of the other planets in the Solary System combined')
  puts "Mass of Mars: #{mars.mass_kg}"
  # puts "Fun Fact about Jupiter: #{jupiter.fun_fact}"

  # puts mars.summary # Why do we puts in main but not in planet summary
  # puts earth.summary

  solar_system.add_planet(mars)
  # solar_system.add_planet(jupiter)
  # solar_system.add_planet(earth)

  list = solar_system.list_planets
  # list

end

main
