require_relative 'planet'
require_relative 'solar_system'

# define a method called main
def main
  moon = Planet.new('moon','white', 3.972e24, 1.212e8, 'water-ice on surface')

  puts "Name: #{moon.name} Color: #{moon.color} mass_kg: #{moon.mass_kg} distance_from_sun_km: #{moon.distance_from_sun_km} fun_fact: #{moon.fun_fact}"

  puts moon.summary

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  puts "Name: #{earth.name} Color: #{earth.color} mass_kg: #{earth.mass_kg} distance_from_sun_km: #{earth.distance_from_sun_km} fun_fact: #{earth.fun_fact}"

  puts earth.summary

  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(moon)
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary

end


# main
main
