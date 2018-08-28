require_relative 'lib/planet'
require_relative 'lib/solar_system'

#planet details method
def list_details(solar_system, planet_name)

  if planet_name
    planet = solar_system.find_planet_by_name(planet_name)
    return planet.summary
  end

end

def add_planet(solar_system, planet_name, color, mass_kg, distance_from_sun_km, fun_fact)

  planet_name = Planet.new(planet_name, color, mass_kg, distance_from_sun_km, fun_fact)

  solar_system.add_planet(planet_name)
end

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 10, 100, 'Martians')
  venus = Planet.new('Venus', 'russet', 7, 23, 'Serena')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)

  input = "START"

  while input != "EXIT"

    puts "\nChoose an option: \n\n1. LIST PLANETS\n2. PLANET DETAILS\n3. ADD A PLANET\n4. EXIT"
    input = gets.chomp.upcase

    if input.include?("LIST")

      puts solar_system.list_planets

    elsif input.include?("DETAILS")

      puts "Which planet?"
      planet_name = gets.chomp.upcase
      puts list_details(solar_system, planet_name)

    elsif input.include?("ADD")
      #THROW ERROR IF THEY PUT ANYTHING BUT FLOAT/INT FOR NUMBER

      puts "\nPlanet name: "
      planet_name = gets.chomp

      puts "\nPlanet color: "
      color = gets.chomp

      puts "\nPlanet mass (kg): "
      mass_kg = gets.to_i

      puts "\nPlanet distance (km): "
      distance_from_sun_km = gets.to_i

      puts "\nFun fact about #{planet_name}: "
      fun_fact = gets.chomp

      puts add_planet(solar_system, planet_name, color, mass_kg, distance_from_sun_km, fun_fact)
    end
  end
end

main
