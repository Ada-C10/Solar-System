# main.rb
require_relative 'planet'
require_relative 'solar_system.rb'

def main
  mercury = Planet.new("Mercury", "grey", 3.3011e23, 5.79e7, "is named after a Roman God")

  venus = Planet.new("Venus", "yellowish-white", 4.87e24, 1.082e8, "may have had oceans in the past")

  puts "#{mercury.name} #{mercury.fun_fact}."

  puts "#{venus.name} #{venus.fun_fact}."

  puts mercury.summary

  puts venus.summary

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  mercury = Planet.new("Mercury", "grey", 3.3011e23, 5.79e7, "is named after a Roman God")
  solar_system.add_planet(mercury)

  venus = Planet.new("Venus", "yellowish-white", 4.87e24, 1.082e8, "may have had oceans in the past")
  solar_system.add_planet(venus)


  list = solar_system.list_planets
  puts list
end

main
