require 'pry'
require_relative 'planet'
require_relative 'solar_system'

def main


  solar_system = SolarSystem.new('Sun')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.433e9, 'Has 150 moons and smaller moonlets')

  venus = Planet.new('Venus', 'yellow', 4.867e24, 1.082e8, 'One day is longer than one year on this planet')

  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)

  puts "Welcome to the solar system! Here are your options:"
  prompt = " \n To list the planets, type 'L'. \n To see planet details, type 'D'. \n To add a planet, type 'A'. \n To exit, type 'E'."

  puts prompt

  while input = gets.chomp.upcase
    until ['L', 'E', 'D', 'A'].include? input
      puts "Please input a valid option."
      input = gets.chomp.upcase
    end

    if input == "L"
      puts "#{solar_system.list_planets}"
      puts prompt

    elsif input == "D"
      puts "Which planet would you like to learn more about?"
      chosen_planet = gets.chomp
      puts solar_system.find_planet_by_name(chosen_planet).summary
      puts prompt

    elsif input == "A"
      puts "Planet name:"
      planet_name = gets.chomp
      puts "Planet color:"
      planet_color = gets.chomp
      puts "Planet mass (kg):"
      planet_mass = gets.chomp
      puts "Planet's distance from the sun (km):"
      planet_distance = gets.chomp
      puts "Fun fact about planet:"
      planet_funfact = gets.chomp

      new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_funfact)

      solar_system.add_planet(new_planet)

      puts "Here is your updated solar system: #{solar_system.list_planets}"

      puts prompt

    elsif input == 'E'
      exit
    else
      puts prompt
    end
  end
end

main
