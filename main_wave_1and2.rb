require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main

  # First instanciation of Planet class
  planet_1 = Planet.new("Mercury", "Gray", 0.330, 57.9, "Smallest planet in our Solar System")
  puts "#{planet_1}"
  puts "#{planet_1.name}"
  puts "#{planet_1.summary}"
  puts

  # Second instanciation of Planet class
  planet_2 = Planet.new("Venus", "Light Gray", 4.87, 108.2, "Spins in an opposite direction as compared to all other planets in the Solar System")
  puts "#{planet_2}"
  puts "#{planet_2.name}"
  puts "#{planet_2.summary}"
  puts

  # Instanciation of SolarSystem class
  solar_system = SolarSystem.new("Sol")

  # Adding a Planet object to the instance method 'add_planet' to the instance of SolarSystem which was assigned to the variable solar_system
  solar_system.add_planet(planet_1)
  solar_system.add_planet(planet_2)

  # Invoking the instance method 'list_planets' on the instance of SolarSystem which was assigned to the variable solar_system
  list_of_planets = solar_system.list_planets
  puts list_of_planets

  # Invoking the instance method 'find_planet_by_name' on an instance of SolarSystem
  found_planet = solar_system.find_planet_by_name("MerCury")
  puts found_planet
  puts found_planet.summary
end

main
