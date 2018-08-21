require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sun')

  solar_system.add_planet(
    Planet.new('Mercury', 'grey', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

  solar_system.add_planet(
    Planet.new('Venus', 'brownish grey', 4.867e24, 1.082e8, "Third brightest object in Earth's sky after the Sun and Moon"))

  solar_system.add_planet(
   Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, "Only planet known to support life"))

  mars = Planet.new('Mars', 'red', 6.41693e23, 2.2279e8, "Second smallest planet in the solar system")
  solar_system.add_planet(mars)

 solar_system.add_planet(
  Planet.new('Jupiter', 'grey', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

solar_system.add_planet(
  Planet.new('Saturn', 'yellow', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

solar_system.add_planet(
  Planet.new('Neptune', 'grey', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

solar_system.add_planet(
  Planet.new('Uranus', 'light blue', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long"))

  list = solar_system.list_planets
  puts list

  # puts '##################################################'
  found_planet = solar_system.find_planet_by_name('Mimo')

  if found_planet
      puts found_planet.summary
  else
      puts "Planet not found."
  end
end

main
