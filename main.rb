# main.rb
require_relative 'planet'
require_relative 'solar_system'

# :name, :color, :mass_kg, :distance_from_sum_km, :fun_fact
def main
  solar_system = SolarSystem.new('WomenofCode')

  earth = Planet.new("Earth", "Green", 1000, 430, "It's hot")
  solar_system.add_planet(earth)

  bay = Planet.new("Bay", "Purple", 4000, 342, "Largest flea market capitol of the world")
  solar_system.add_planet(bay)

  sasquatch = Planet.new("Sasquatch", "Brown", 3400, 234, "It's really fuzzy")
  solar_system.add_planet(sasquatch)

  hammock = Planet.new("HammockIsle", "Rainbow", 5646, 642, "Everyone lives on a Hammock")
  solar_system.add_planet(hammock)

  santaCruz = Planet.new("SantaCruz", "Ocean", 1040, 378, "The fountain of youth lives here")
  solar_system.add_planet(santaCruz)

  list = solar_system.list_planets
  # binding.pry

  puts list

  found_planet = solar_system.find_planet_by_name('HammockIsle')

  puts found_planet
# => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary

end


main
