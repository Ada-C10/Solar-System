require_relative 'planet'
require_relative 'solar_system'


def main

  #create a new solar system & add some planets
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 40, 203.20, 'Only planet known to support life')
  pluto = Planet.new('Pluto', 'hot pink', 5032.323, 1.221, 'Is it really a planet?')

  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)

  list = solar_system.list_planets()

  #create a loop to accept user input
  answer = "yes"

  puts "Welcome to our planet database!"
  while answer == "yes"
    puts "What would you like to do?"
    puts "
    1. List Planets
    2. See Planet Details
    3. Add a Planet
    4. Exit"

    choice = gets.chomp.to_i

    #case statements determine what information is displayed on the console
    case choice
    when 1
      list = solar_system.list_planets()
      puts list
      puts "Would you like to do something else?"
      answer = gets.chomp

    when 2
      puts "Cool! What is the name of the planet that you'd like to learn more about?"
      planet_choice = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet_choice)
      puts found_planet.summary
      puts "Would you like to do something else?"
      answer = gets.chomp

    when 3
      puts "Wonderful! Now for a few questions about the planet. Please enter the following details:"

      puts "Planet name:"
      name = gets.chomp
      puts "Color:"
      color = gets.chomp
      puts "Mass (in kg):"
      mass_kg = gets.chomp.to_f
      puts "Distance from the sun (in km):"
      distance_from_sun_km = gets.chomp.to_f
      puts "Fun fact:"
      fun_fact = gets.chomp

      name = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)

      solar_system.add_planet(name)

      puts name.summary
      puts "Would you like to do something else?"
      answer = gets.chomp

    when 4
      puts "See ya!"
    end
  end
end

main
