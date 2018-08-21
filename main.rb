# main.rb
require_relative 'planet'
require_relative 'solar_system'

# :name, :color, :mass_kg, :distance_from_sum_km, :fun_fact
def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new("Earth", "Green", 1000, 430, "It's hot")
  solar_system.add_planet(earth)
  bay = Planet.new("Bay", "Purple", 4000, 342, "Largest flea market capitol of the world")
  solar_system.add_planet(bay)

  list = solar_system.list_planets
  # binding.pry

  puts list

end


main
