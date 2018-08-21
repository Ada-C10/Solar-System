require_relative 'planet'
require_relative 'solar_system'

def main
  # Create two Planets and a SolarSystem
  earth = Planet.new("Earth", "blue-green", 5.972*10**24,
    1.496*10**8, "Only planet known to support life")
  jupiter = Planet.new("Jupiter", "orange-ish", 1.898*10**27, 778500000,
    "Largest planet")
  earth2 = Planet.new("earth", "green-blue", 5.972*10**24,
    1.496*10**8, "twin")
  solar_system = SolarSystem.new("Sun")

  # Add earth and jupiter to solar_system
  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(earth2)

  # Print outputs
  puts earth.summary
  puts jupiter.summary
  puts solar_system.list_planets

  # Finds all Planets in solar_system with a given name and prints output
  found_planet = solar_system.find_planet_by_name("earth")
  found_planet.each { |planet| puts planet.summary }

  # Calculates and prints the distance between Earth and Jupiter
  distance = solar_system.distance_between("earth", "jupiter")
  puts "#{distance}km"
end

main
